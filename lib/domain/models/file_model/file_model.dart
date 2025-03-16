import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/attach_category.dart';

part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
class FileModel with _$FileModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
   const factory FileModel({
     int? udfId,
     int? usfFileId,
     AttachCategory? attachCategory,
   }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}

extension FileModelExt on FileModel {
  String get path =>
      "${APIBase.url}/storage/download?category=${attachCategory?.rawValue}&fileId=$usfFileId";
}