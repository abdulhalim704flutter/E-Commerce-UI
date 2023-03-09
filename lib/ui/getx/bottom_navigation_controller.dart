import 'package:get/get.dart';


class BottomNavigatinController extends GetxController{

  int selectedIndex = 0;

  void changeIndex(int index){
    selectedIndex = index;
    update();
  }
}