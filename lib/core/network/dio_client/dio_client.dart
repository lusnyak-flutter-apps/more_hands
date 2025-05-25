import 'package:dio/dio.dart';

import '../../../data/data.dart';
import '../../core.dart';

@module
abstract class DioClient {
  @Named("baseUrl")
  String get baseUrl => APIBase.url;

  @lazySingleton
  Dio dio(@Named('baseUrl') String url) {
    final dio = Dio(BaseOptions(
        baseUrl: url,
        contentType: 'application/json',
        // headers: {
        //   "X-Lat": Preferences.instance.latitude,
        //   "X-Lon": Preferences.instance.longitude,
        //   "X-Lang" : "ru",
        //   "X-Timezone-Offset" : "+03:00"
        // },
        // responseDecoder: (a, b, c) {
        //   return jsonDecode(c.s);
        // },
        // requestEncoder: (a, b) {
        //   return jsonEncode(a.data);
        // },
        responseType: ResponseType.json))
      ..interceptors.addAll([
        ApiLoggingInterceptor(),
      ]);

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (
          RequestOptions options,
          RequestInterceptorHandler handler,
        ) async {
          // TODO: сделать рефреш токена

          String extractJwtToken(String tokenString) {
            // JWT-токен заканчивается перед запятой
            final parts = tokenString.split(',');
            if (parts.isNotEmpty) {
              return parts[0].trim();
            }
            throw const FormatException('Invalid token format');
          }

          final tokenMdl = await getIt<TokenStorage>().readToken();
          if (tokenMdl != null && tokenMdl.token.isNotEmpty) {
            final jwtToken = extractJwtToken(tokenMdl.token);
            options.headers['Authorization'] = 'Bearer $jwtToken';
          }

          print('>>> Authorization: ${options.headers['Authorization']}');
          return handler.next(options);
        },
      ),
    );

    return dio;
  }
}
