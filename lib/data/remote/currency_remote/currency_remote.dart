import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/currency_model/currency_model.dart';

part 'currency_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class CurrencyRemoteApi {
  @factoryMethod
  factory CurrencyRemoteApi(Dio dio) = _CurrencyRemoteApi;

  @GET(EndPoint.getCurrencyByCode)
  Future<CurrencyModel?> getByCode(@Query('curCode') String code);

  @GET(EndPoint.findCurrencyByCode)
  Future<List<CurrencyModel>?> findByCode({@Query('curCode') String code = "",
      @Query('onlyActive') bool isActive = true});
}
