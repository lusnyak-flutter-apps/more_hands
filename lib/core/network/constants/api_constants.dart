abstract class APIBase {
   static const url = 'http://814407a9fc09.sn.mynetname.net:9680';
// static const path = '/api';
}

abstract class HeaderParameterKeys {
  static const authorization = "Authorization";
  static const contentType = "Content-Type";
  static const accept = "Accept";
  static const userAgent = "User-Agent";
}

abstract class HeaderValues {
  static const applicationJson = "application/json";
  static const applicationJsonCharsetUtf8 = "application/json, charset=utf-8";
  static const applicationFormUrlencoded = "application/x-www-form-urlencoded";
  static const applicationJsonTextPlain = "application/json, text/plain, */*";
}