

import 'package:get/get.dart';

import '../models/productModel.dart';

class Controller extends GetxController{


  RxInt x= 0.obs;


  Rx<ProductModel> productModel = ProductModel().obs;

}