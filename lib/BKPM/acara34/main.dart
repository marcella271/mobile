import 'package:flutter/material.dart';
import 'package:flutter_project4/BKPM/acara34/get_data.dart';

//ACARA 34
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: GetDataScreen(),
    );
  }
}