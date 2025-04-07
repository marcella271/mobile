import 'package:flutter_project4/BKPM/acara29,30,31,32/model/product.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//ACARA 30
class Purchase extends GetxController {
  var products = <Product>[].obs;
      @override
 // void $configureLifeCycle() {
    void onInit() {
      super.onInit();
      fetchProducts();
    }
 // }
    void fetchProducts() async {
      await Future.delayed(Duration(seconds: 1));
      //call From server End
      var serverResponse = [
        Product(1, "Demo Product", "aby", 
        "This is a Product that we are going to show by getX", 300.0),
        Product(1, "Demo Product", "aby", 
        "This is a Product that we are going to show by getX", 300.0),
        Product(1, "Demo Product", "aby", 
        "This is a Product that we are going to show by getX", 300.0),
        Product(1, "Demo Product", "aby", 
        "This is a Product that we are going to show by getX", 300.0),
        Product(1, "Demo Product", "aby", 
        "This is a Product that we are going to show by getX", 300.0),
        Product(1, "Demo Product", "aby", 
        "This is a Product that we are going to show by getX", 300.0)
      ];

      products.value = serverResponse;
    }

  
}