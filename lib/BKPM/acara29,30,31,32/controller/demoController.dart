import 'package:flutter/material.dart';
import 'package:flutter_project4/BKPM/acara29,30,31,32/model/product.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

//ACARA 30
class Democontroller extends GetxController{
  var cartItems = <Product>[].obs;//observable
  int get cartCount => cartItems.length;
  double get totalAmount => cartItems.fold(0.0, 
  (sum, elemet) => sum + elemet.price);
  addToCart(Product product) {
    cartItems.add(product);
  }

  final storage = GetStorage();
  bool get isDark => storage.read('darkmode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => storage.write('darkmode', val);
}