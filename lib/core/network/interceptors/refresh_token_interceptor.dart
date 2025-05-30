import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';

class RefreshTokenInterceptor extends Interceptor {
  bool isRefreshing = false;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokenMdl = await getIt<TokenStorage>().readToken();
    if (tokenMdl != null && tokenMdl.token.isNotEmpty) {
      final expiration = tokenMdl.expiration;
      final refreshExpiration = tokenMdl.refreshExpiration;
      final refreshToken = tokenMdl.refreshToken;
      final now = DateTime.now().millisecondsSinceEpoch;

      String? extractJwtToken(String tokenString) {
        final parts = tokenString.split(',');
        if (parts.length > 1) {
          return parts[0].trim();
        } else if (parts.length == 1) {
          return null;
        }
        throw const FormatException('Invalid token format');
      }

      if (options.path.contains(EndPoint.refreshToken)) {
        final extractedJwtToken = extractJwtToken(refreshToken);
        if (extractedJwtToken == null) {
          options.headers['Authorization'] = refreshToken;
        } else {
          options.headers['Authorization'] = 'Bearer $extractedJwtToken';
        }
      } else {
        if (now >= expiration) {
          // access token истёк
          if (!isRefreshing) {
            // если уже идёт процесс обновления токена, ждём его завершения

            if (now < refreshExpiration) {
              isRefreshing = true;
              try {
                final authRepo = getIt<AuthRepository>();
                final refreshed = await authRepo.refreshToken(refreshToken);
                if (refreshed) {
                  final newTokenMdl = await getIt<TokenStorage>().readToken();
                  final extractedJwtToken =
                      extractJwtToken(newTokenMdl?.token ?? "");
                  if (extractedJwtToken == null) {
                    options.headers['Authorization'] = newTokenMdl?.token;
                  } else {
                    options.headers['Authorization'] =
                        'Bearer $extractedJwtToken';
                  }
                } else {
                  // refresh не удался — logout
                  await authRepo.localLogout();
                  return handler.reject(DioException(
                    requestOptions: options,
                    error: 'Refresh token expired, logout',
                    type: DioExceptionType.cancel,
                  ));
                }
                isRefreshing = false;
              } catch (e) {
                isRefreshing = false;
                await getIt<AuthRepository>().localLogout();
                return handler.reject(DioException(
                  requestOptions: options,
                  error: 'Token refresh failed: $e',
                  type: DioExceptionType.cancel,
                ));
              }
            } else {
              // refresh token истёк — logout
              await getIt<AuthRepository>().localLogout();
              return handler.reject(DioException(
                requestOptions: options,
                error: 'Refresh token expired, logout',
                type: DioExceptionType.cancel,
              ));
            }
          }
        } else {
          // access token валиден
          final extractedJwtToken = extractJwtToken(tokenMdl.token);
          if (extractedJwtToken == null) {
            options.headers['Authorization'] = tokenMdl.token;
          } else {
            options.headers['Authorization'] = 'Bearer $extractedJwtToken';
          }
        }
      }
    }

    print('>>> Authorization: ${options.headers['Authorization']}');
    return handler.next(options);
  }
}
