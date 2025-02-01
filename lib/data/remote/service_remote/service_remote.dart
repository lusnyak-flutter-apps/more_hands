import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/service_by_category_model/service_by_category_model.dart';
import 'package:more_hands/domain/models/service_means_model/service_measure_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';

part 'service_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class ServiceRemoteApi {
  @factoryMethod
  factory ServiceRemoteApi(Dio dio) = _ServiceRemoteApi;

  @GET(EndPoint.findServices)
  Future<List<ServiceModel>?> getServices(
      @Query('servName') String serviceName,
      @Query("loc") List<int> locations);

  @GET(EndPoint.findServicesByCat)
  Future<List<ServiceByCategoryModel>?> findServices(
      @Query('servName') String serviceName);

  @GET(EndPoint.getServMeas)
  Future<List<ServiceMeasureModel>?> getServiceMeasures();
}
