import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:more_hands/core/network/constants/api_constants.dart';
import 'package:more_hands/core/network/interceptors/api_logging_interceptor.dart';


@module
abstract class DioClient {
  @Named("baseUrl")
  String get baseUrl => APIBase.url;

  @lazySingleton
  Dio dio(@Named('baseUrl') String url) => Dio(BaseOptions(
      baseUrl: url,
      contentType: 'application/json',
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
}
