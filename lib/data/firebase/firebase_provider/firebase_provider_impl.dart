import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/firebase/firebase_options.dart';

import 'firebase_provider.dart';

@Injectable(as: FirebaseProvider)
class FirebaseProviderImpl implements FirebaseProvider {
  @override
  Future<FirebaseApp> initializeApp() async {
    return await Firebase.initializeApp(
      name: "Morehandsapp",
      options: DefaultFirebaseOptions.currentPlatform,
    ).then((onValue){
      debugPrint(onValue.options.appId);
      return onValue;
    });
  }
}
