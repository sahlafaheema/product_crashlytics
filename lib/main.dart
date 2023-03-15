import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'product.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


///firebasecrashlytics

   FirebaseCrashlytics.instance.crash;

  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp();

  if (kDebugMode) {

    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);//disable false
  }else{
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      color: Colors.teal,
      title: 'Product',
      home: HomePage(),
    );
  }
}
