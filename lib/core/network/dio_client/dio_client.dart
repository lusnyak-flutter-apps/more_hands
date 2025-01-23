import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:localizations/localizations.dart';
import 'package:more_hands/core/network/constants/api_constants.dart';
import 'package:more_hands/core/network/interceptors/api_logging_interceptor.dart';
import 'package:more_hands/data/local/preferences/preferences.dart';


@module
abstract class DioClient {
  @Named("baseUrl")
  String get baseUrl => APIBase.url;

  @lazySingleton
  Dio dio(@Named('baseUrl') String url) => Dio(BaseOptions(
      baseUrl: url,
      contentType: 'application/json',
      headers: {
        "X-Lat": Preferences.instance.latitude,
        "X-Lon": Preferences.instance.longitude,
        "X-Lang" : "ru",
        "X-Timezone-Offset" : "+03:00"
      },
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
