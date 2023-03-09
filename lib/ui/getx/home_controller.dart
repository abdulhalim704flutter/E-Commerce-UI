import 'package:e_commerece/data/models/product_slider_model.dart';
import 'package:e_commerece/data/network_utils.dart';
import 'package:get/get.dart';

import '../../data/models/urls.dart';


class HomeController extends GetxController{
  ProductSliderModel productSliderModel = ProductSliderModel();
  bool getProductSliderInProgress = false;

  Future<bool> getProductSliderList() async {
    getProductSliderInProgress = true;
    update();
    final result = await NetworkUtils().getMethod(Urls.productSliderUrl);
    getProductSliderInProgress = false;

    if(result !=null){
      productSliderModel = ProductSliderModel.fromJson(result);
      update();
      return true;
    }else{
      update();
      return false;
    }

  }
}