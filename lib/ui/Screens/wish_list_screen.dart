import 'package:e_commerece/widgets/product_item_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/home/categorys_items_widgets.dart';
import '../getx/bottom_navigation_controller.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  BottomNavigatinController controller = Get.put(BottomNavigatinController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Wishlist',
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
          onPressed: (){
            controller.changeIndex(0);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black54,),
        ),
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            childAspectRatio: 7/8
          ),
          itemCount: 25,
          itemBuilder: (context, index) {
            return ProductItemPreviewCard();
          }),
    );
  }
}

