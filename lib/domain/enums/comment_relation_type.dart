import 'package:json_annotation/json_annotation.dart';

enum CommentRelationType {
  @JsonValue("empty")
  empty("empty"),
  @JsonValue("child")
  child("child"),
  @JsonValue("parent")
  parent("parent");

  final String? rawValue;

  const CommentRelationType(this.rawValue);
}
