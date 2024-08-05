import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBDa7Ik11XamxMgXWuBFw5CUkSH85Kv_K0",
            authDomain: "openbit-mydevteam.firebaseapp.com",
            projectId: "openbit-mydevteam",
            storageBucket: "openbit-mydevteam.appspot.com",
            messagingSenderId: "794070351747",
            appId: "1:794070351747:web:42e38758de8e91a2fdc0b6",
            measurementId: "G-L8RBB43FRF"));
  } else {
    await Firebase.initializeApp();
  }
}
