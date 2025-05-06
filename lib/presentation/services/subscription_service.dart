import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubscriptionService {
  final InAppPurchase _iap = InAppPurchase.instance;

  Future<bool> buySubscription(String productId) async {
    final available = await _iap.isAvailable();
    if (!available) return false;

    final ProductDetailsResponse response =
        await _iap.queryProductDetails({productId});
    if (response.notFoundIDs.isNotEmpty || response.productDetails.isEmpty) {
      return false;
    }

    final productDetails = response.productDetails.first;
    final purchaseParam = PurchaseParam(productDetails: productDetails);

    final completer = Completer<bool>();
    late StreamSubscription<List<PurchaseDetails>> sub;

    sub = _iap.purchaseStream.listen((purchases) async {
      for (final purchase in purchases) {
        if (purchase.productID == productId &&
            purchase.status == PurchaseStatus.purchased) {
          completer.complete(true);
          await _iap.completePurchase(purchase);
          await sub.cancel();
        } else if (purchase.status == PurchaseStatus.error ||
            purchase.status == PurchaseStatus.canceled) {
          completer.complete(false);
          await sub.cancel();
        }
      }
    });

    await _iap.buyNonConsumable(purchaseParam: purchaseParam);
    return completer.future;
  }
}
