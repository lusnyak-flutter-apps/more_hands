import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';

part 'storage_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class StorageRemoteApi {
  @factoryMethod
  factory StorageRemoteApi(Dio dio) = _StorageRemoteApi;

  @GET("{path}")
  Future<dynamic> downloadFileByPath(@Path() String path);

  @GET(EndPoint.storageDownload)
  Future<dynamic> downloadFile(
    @Query("category") String category,
    @Query("fileId") String fileId,
  );
}
