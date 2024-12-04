abstract class EndPoint {
  //Authorization
  static const String getCode = "/get-code";
  static const String auth = "/auth";
  static const String logout = "/logout";
  static const String userDelete = "/user/delete";
  static const String user = "/user";
  static const String userChangePhoneSMS = "/user/change-phone/sms";
  static const String userChangePhoneSMSVerify = "/user/change-phone/sms/verify";

  static const String settingsPin = "/settings/pin";

  //Ping
  static const String ping = "/ping";
  static const String pingWithToken = "/ping-with-token";

  // Grade

  static const String calendar = "/calendar";

  static const String journals = "/journals";
  static const String journalsEvent = "/journals/events";
  static const String journalsEventId = "/journals/events/{id}";
  static const String journalsEventUpdate = "/journals/events/{id}/update";

  static const String journalsMood = "/journals/mood";
  static const String journalsCategory = "/journals/category";
  static const String journalsSubCategory = "/journals/parent-category";
  static const String journalsAppearances = "/journals/appearances";
  static const String journalsFeelings = "/journals/feelings";
  static const String journalsFeelingsGroups = "/journals/feeling-groups";
  static const String journalsSpheres = "/journals/spheres";
  static const String journalsLife = "/journals/life";

  static const String grades = "/grades";
  static const String gradesMood = "/grades/mood/{id}";
  static const String gradesSphere = "/grades/sphere/{id}";
  static const String gradesDay = "/grades/day";

  //Main
  static const String index = "/index";

  //Category and subcategory settings end points
  static const String categories = "/categories";
  static const String settingsCategories = "/settings/categories";
  static const String settingsCategory = "/settings/categories/{id}";
  static const String settingsArchiveCategories = "/settings/archive/categories";
  static const String settingsArchiveCategory = "/settings/archive/categories/{id}";

  static const String subCategories = "/subcategories";
  static const String settingsSubCategories = "/settings/subcategories";
  static const String settingsSubCategory = "/settings/subcategories/{id}";
  static const String settingsArchiveSubCategories = "/settings/archive/subcategories";
  static const String settingsArchiveSubCategory = "/settings/archive/subcategories/{id}";

  // spheres settings endpoints
  static const String spheres = "/spheres";
  static const String settingsSpheres = "/settings/spheres";
  static const String settingsSphere = "/settings/spheres/{id}";
  static const String settingsArchiveSpheres = "/settings/archive/spheres";
  static const String settingsArchiveSphere = "/settings/archive/spheres/{id}";

  // appearances settings endpoints
  static const String settingsAppearances = "/settings/appearances";
  static const String settingsAppearance = "/settings/appearances/{id}";
  static const String settingsArchiveAppearances = "/settings/archive/appearances";
  static const String settingsArchiveAppearance = "/settings/archive/appearances/{id}";

  static const String settingsFeelingGroup = "/settings/feeling-group";
  static const String settingsFeelingGroups = "/settings/feeling-groups";
  static const String settingsFeelingCategory = "/settings/feeling-category";
  static const String settingsFeelings = "/settings/feelings";

  static const String settingsMood = "/settings/mood";

  // settings
  static const String trainingFaQ = "/faq";
  static const String support = "/support";
  static const String offer = "/offer";

  static const String settingsNotes = "/settings/notes";
  static const String settingsNote = "/settings/notes/{id}";
  static const String settingsBeginningWeek = "/settings/beginning_week";

  static const String statisticsMoodsCalculator = "/statistics/moods/calculator";
  static const String statisticsMoodsWeek = "/statistics/moods/week";
  static const String statisticsMoodsDay = "/statistics/moods/day";
  static const String statisticsMoodsChart = "/statistics/moods/chart";

  static const String statisticsMoodsAppearanceMood = "/statistics/moods/appearance-mood";
  static const String statisticsMoodsCategoryMood = "/statistics/moods/category-mood";
  static const String statisticsMoodsFeelingMood = "/statistics/moods/feeling-mood";
}
