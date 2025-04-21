
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_project4/BKPM/acara38,39,40/LoginScreen.dart';
import 'package:flutter_project4/firebase_options.dart';

//ACARA38
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyDCOSNbUBFigijQOspIpmsW8yczKKmWWV4",
    authDomain: "mobilesemester4.firebaseapp.com",
    projectId: "mobilesemester4",
    storageBucket: "mobilesemester4.firebasestorage.app",
    messagingSenderId: "1020840793702",
    appId: "1:1020840793702:web:372f554120fcb2a32effa7",
  ),
  );
   options: DefaultFirebaseOptions.currentPlatform;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     home: LoginScreen(),
  


    );
  }
}