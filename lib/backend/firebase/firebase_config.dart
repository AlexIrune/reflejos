import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCe8CNbGFU_5pVehfCGrvnD7iqSi3cZxlo",
            authDomain: "reflejos-estelladam.firebaseapp.com",
            projectId: "reflejos-estelladam",
            storageBucket: "reflejos-estelladam.appspot.com",
            messagingSenderId: "100090630429",
            appId: "1:100090630429:web:a534878a4cabf2e85e51f4",
            measurementId: "G-1F11SHZH5Y"));
  } else {
    await Firebase.initializeApp();
  }
}
