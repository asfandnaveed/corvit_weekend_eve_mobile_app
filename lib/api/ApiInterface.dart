

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiInterface {

  GetConnect connect = GetConnect();

  String productDataUrl = 'https://projects.asfandnaveed.com/corvit/api/getallproducts.php';

  Future getProductData() async{

    var response = await connect.get(productDataUrl);

    debugPrint('${response.body}');

  }


}