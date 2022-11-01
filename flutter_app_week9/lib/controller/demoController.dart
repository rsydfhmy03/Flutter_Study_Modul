import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import '/model/product.dart';
import 'package:get/get.dart';

class DemoController extends GetxController {
  var carItems = <Product>[].obs;
  int get cartCount => carItems.length;
  double get totalAmount => carItems.fold(0.0, 
      (sum, element) => sum + element.price); //total fold is a dart facility
  //add the product
  addToCart(Product product){
    carItems.add(product);
  }

  final storage = GetStorage();
  bool get isDark => storage.read('darkmode')?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => storage.write('darkmode', val);
}