import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

part 'location_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class LocationRemoteApi {
  @factoryMethod
  factory LocationRemoteApi(Dio dio) = _LocationRemoteApi;

  @GET(EndPoint.findClosestLocations)
  Future<List<LocationModel>?>  findClosestLocations({
    @Query('city') String locName = "",
  });
}
