abstract class EndPoint {
  //Authorization
  static const String login = "/login";
  static const String getCurrentUserInfo = "/user/getCurrentUserInfo";
  static const String getCurrentUserReferralsInfo =
      "/user/getCurrentUserReferralsInfo";

  static const String findUsersByLocAndText = "/user/findByLocAndText";
  static const String findUsersByLocAndServices = "/user/findByLocAndServices";

  static const String findServices   = "/service/find";
  static const String findServicesByCat = "/service/findByCat";
  static const String getServMeas = "/service/getServMeas";

  static const String userName = "/user/name";
  static const String userProfileImage = "/user/profileImage";
  static const String userContacts = "/user/contacts";
  static const String userBio = "/user/bio";

  static const String storageDownload = "/storage/download";

  static const String getCurrencyByCode = "/currency/getByCode";
  static const String findCurrencyByCode = "/currency/findByCode";

  static const String userServicesList= "/userServices/listByCat";
  static const String addUserService = "/userServices/add";
  static const String updateUserService = "/userServices/update";
  static const String deleteUserService = "/userServices/delete";
  static const String userServiceImage = "/userServices/userServiceImage";

  static const String getRequestsBySender = "/request/getBySender";
  static const String getUnseenCountBySender = "/request/getBySenderCnt";
  static const String getRequestsByReceiver = "/request/getByReceiver";
  static const String getUnseenCountByReceiver = "/request/getByReceiverCnt";
  static const String seenRequest = "/request/see";

  static const String rejectRequest = "/action/reqReject";
  static const String cancelRequest = "/action/reqCancel";
  static const String approveRequest = "/action/reqApprove";
  static const String createAndSendRequest = "/action/reqCreateAndSend";

  static const String whereAmI = "/location/whereami";
  static const String findClosestLocations = "/location/findClosest";
  static const String getUserInfo = "/user/getUserInfo";
  static const String userComments = "/userComments";
  static const String getReplyCommentToCommentId = "/userComments/getByReplyToCommentId";
  static const String getCommentsByUserId = "/userComments/getByUserId";
 }
