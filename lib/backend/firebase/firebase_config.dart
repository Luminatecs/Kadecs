import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCkv4plFsK0iziW5lkXEN2FAuUOHRbOdPQ",
            authDomain: "kadecsrowy.firebaseapp.com",
            projectId: "kadecsrowy",
            storageBucket: "kadecsrowy.appspot.com",
            messagingSenderId: "173919586870",
            appId: "1:173919586870:web:fe57b807cd39c2adaa6697"));
  } else {
    await Firebase.initializeApp();
  }
}
