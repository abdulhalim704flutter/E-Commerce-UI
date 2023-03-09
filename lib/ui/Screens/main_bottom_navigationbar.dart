import 'package:e_commerece/ui/Screens/carts_screen.dart';
import 'package:e_commerece/ui/Screens/home_screen.dart';
import 'package:e_commerece/ui/Screens/product_categorise_screen.dart';
import 'package:e_commerece/ui/Screens/wish_list_screen.dart';
import 'package:e_commerece/ui/getx/bottom_navigation_controller.dart';
import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MainBottomNavigationBar extends StatefulWidget {
  static int selectedIndex = 0;
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  BottomNavigatinController controller = Get.put(BottomNavigatinController());

  final List<Widget> screens = const[
    HomeScreen(),
    ProductCategoriseScreen(),
    CartsScreen(),
    WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavigatinController>(
        builder: (_) {
          return screens[controller.selectedIndex];
        }
      ),
      bottomNavigationBar: GetBuilder<BottomNavigatinController>(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            selectedItemColor: AppColors.PrimariyColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: (index){
              controller.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Categorise'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Wish'),
            ],
          );
        }
      ),
    );
  }
}
