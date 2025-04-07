import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_project4/BKPM/acara29,30,31,32/controller/demoController.dart';
import 'package:flutter_project4/BKPM/acara29,30,31,32/view/demoPage.dart';
import 'package:flutter_project4/BKPM/acara29,30,31,32/view/home.dart';

//ACARA 32
void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Democontroller ctrl = Get.put(Democontroller());
  @override
  Widget build(BuildContext content) {
    return SimpleBuilder(builder: (_) {
      return GetMaterialApp(
        title: 'GetX',
        theme: ctrl.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/':(context) => HomePage(),
          '/cart':(Context) => DemoPage(),
        },
      );
    });
  }
}