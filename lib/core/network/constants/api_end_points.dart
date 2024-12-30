abstract class EndPoint {
  //Authorization
  static const String login = "/login";
  static const String getCurrentUserInfo = "/user/getCurrentUserInfo";
  static const String getCurrentUserReferralsInfo = "/user/getCurrentUserReferralsInfo";

  static const String findUsersByLocAndText = "/user/findByLocAndText";
  static const String findUsersByLocAndServices = "/user/findByLocAndServices";

  static const String findServices = "/service/find";
  static const String userServices = "/service/userServices";


}
