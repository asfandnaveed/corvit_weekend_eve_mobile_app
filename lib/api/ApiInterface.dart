

import 'package:corvit_weekend_eve/controller/controller.dart';
import 'package:corvit_weekend_eve/models/productModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiInterface {

  GetConnect connect = GetConnect();

  Controller controller = Get.find();

  String productDataUrl = 'https://projects.asfandnaveed.com/corvit/api/getallproducts.php';

  Future getProductData() async{

    var response = await connect.get(productDataUrl);

    debugPrint('${response.body}');

    controller.productModel.value = ProductModel.fromJson(response.body);

  }


  Future RegisterUser() async{

    String registerURL = "https://asfandnaveed.com/projects/corvit/api/register.php";

    var formdata = FormData({
      "username":"Mobile",
      "email":"mobile@corvit.com",
      "password": "123456"
    });

    var response = await connect.post(registerURL, formdata);

    debugPrint('${response.body}');

  }


}