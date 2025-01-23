import 'package:more_hands/core/core.dart';

enum AttachCategory {
  @JsonValue("service_image")
  serviceImage("service_image"),
  @JsonValue("user_service_image")
  userServiceImage("user_service_image"),
  @JsonValue("profile_image")
  profileImage("profile_image");

  final String? rawValue;

  const AttachCategory(this.rawValue);
}
