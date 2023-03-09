import 'package:e_commerece/ui/getx/bottom_navigation_controller.dart';
import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:e_commerece/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/carts/carts_product_items.dart';


class CartsScreen extends StatefulWidget {
  const CartsScreen({Key? key}) : super(key: key);

  @override
  State<CartsScreen> createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  BottomNavigatinController controller = Get.put(BottomNavigatinController());
  final TextEditingController productCountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            'Carts',
            style: TextStyle(color: Colors.black54),
          ),
          leading: IconButton(
            onPressed: () {
              controller.changeIndex(0);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CartsProductItems();
                  }),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.PrimariyColor.withOpacity(0.20),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price',style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12
                      ),),
                      Text('\$120000',
                      style: TextStyle(
                        color: AppColors.PrimariyColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                      child: AppElevetedButton(text: 'Checkout', onTap: () {}))
                ],
              ),
            )
          ],
        ));
  }
}




