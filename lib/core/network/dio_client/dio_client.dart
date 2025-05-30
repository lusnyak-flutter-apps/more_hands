import 'package:dio/dio.dart';

import '../../core.dart';
import '../interceptors/refresh_token_interceptor.dart';

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
        RefreshTokenInterceptor(),
        ApiLoggingInterceptor(),
      ]);

    return dio;
  }
}
