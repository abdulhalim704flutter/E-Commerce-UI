import 'package:flutter/material.dart';
import '../../ui/utils/app-colors.dart';
import 'inc_dec_form_feild.dart';


class CartsProductItems extends StatefulWidget {
  const CartsProductItems({
    Key? key,
  }) : super(key: key);

  @override
  State<CartsProductItems> createState() => _CartsProductItemsState();
}

class _CartsProductItemsState extends State<CartsProductItems> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      elevation: 2,
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/shoe2.png',
            width: 90,
            height: 70,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Name',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: 0.4,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Color : Black',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Size: XL',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$100',
                        style: TextStyle(
                          color: AppColors.PrimariyColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 95,
                        height: 30,
                        child: IncDecFormFeild(

                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}