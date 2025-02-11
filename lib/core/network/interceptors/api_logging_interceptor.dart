import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';

class ApiLoggingInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers[HeaderParameterKeys.accept] = HeaderValues.applicationJson;


    final tokenMdl = await getIt<TokenStorage>().readToken();
    if (tokenMdl != null && tokenMdl.token.isNotEmpty) {
      options.headers['Authorization'] = tokenMdl.token;
    }

    final lat = Preferences.instance.latitude;
    final long = Preferences.instance.longitude;
    options.headers['X-Lat'] = lat;
    options.headers['X-Lon'] = long;

    final lng = Preferences.instance.languageCode;
    options.headers['X-Lang'] = lng;

    final tZone =  DateTime.now().timeZoneOffset.toString();
    options.headers['X-Timezone-Offset'] = tZone;

    debugPrint(
        'REQUEST[${options.method}] => PATH: ${options.uri} => HEADER: ${options.headers}  => BODY: ${options.data} => QUERY: ${options.queryParameters}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(response.data.runtimeType.toString());
    debugPrint(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} => DATA: ${response.data}',
    );
    if (response.data is String) {
      return super.onResponse(
          Response(
            requestOptions: response.requestOptions,
            data: jsonDecode(response.data),
            statusCode: response.statusCode,
            statusMessage: response.statusMessage,
            isRedirect: response.isRedirect,
            redirects: response.redirects,
            headers: response.headers,
            extra: response.extra,
          ),
          handler);
    }

    return super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    debugPrint(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path} => MESSAGE: ${err.message} => DATA: ${err.response?.data}',
    );
    if (err.response?.statusCode == 401) {
      await getIt<AuthRepository>().localLogout();
    }
    return super.onError(err, handler);
  }
}
