import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDjGPGBoEw7kGFWff_VtX2ZiupLphoHRHw",
            authDomain: "job-verse-u03ww3.firebaseapp.com",
            projectId: "job-verse-u03ww3",
            storageBucket: "job-verse-u03ww3.firebasestorage.app",
            messagingSenderId: "156244328507",
            appId: "1:156244328507:web:0a15793d29e3fe85359c1e"));
  } else {
    await Firebase.initializeApp();
  }
}
