import 'package:more_hands/core/core.dart';

// new, accepted, rejected, canceled
enum RequestStatus {
  @JsonValue("all")
  all("all"),
  @JsonValue("new")
  new_("new"),
  @JsonValue("accepted")
  accepted("accepted"),
  @JsonValue("rejected")
  rejected("rejected"),
  @JsonValue("canceled")
  canceled("canceled");

  final String? rawValue;

  const RequestStatus(this.rawValue);

  String get full => "new,accepted";
}

enum RequestType {
  receiver,
  sender,
}
