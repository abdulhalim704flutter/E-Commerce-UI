import 'package:e_commerece/ui/getx/bottom_navigation_controller.dart';
import 'package:e_commerece/widgets/home/categorys_items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCategoriseScreen extends StatefulWidget {
  const ProductCategoriseScreen({Key? key}) : super(key: key);

  @override
  State<ProductCategoriseScreen> createState() =>
      _ProductCategoriseScreenState();
}

class _ProductCategoriseScreenState extends State<ProductCategoriseScreen> {
  BottomNavigatinController controller = Get.put(BottomNavigatinController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Categorise',
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
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 10,
          itemBuilder: (context, index) {
            return CategoryItemsWidgets(
                categoryName: "ABC",
                icon: Icons.abc,
                onTap: () {}
                );
          }),
    );
  }
}
