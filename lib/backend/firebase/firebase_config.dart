import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDnEwCGU6IHVrcMekhmrLH4EP7gP5a111c",
            authDomain: "comhelp-projekt.firebaseapp.com",
            projectId: "comhelp-projekt",
            storageBucket: "comhelp-projekt.appspot.com",
            messagingSenderId: "979444520325",
            appId: "1:979444520325:web:fcf2664cb98879572d20ec"));
  } else {
    await Firebase.initializeApp();
  }
}
