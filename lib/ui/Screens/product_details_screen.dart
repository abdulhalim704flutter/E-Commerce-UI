import 'package:e_commerece/widgets/carts/inc_dec_form_feild.dart';
import 'package:e_commerece/widgets/product_details/product_image_slider.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_elevated_button.dart';
import '../utils/app-colors.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black54,
        ),
        title: const Text(
          'Product Details',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageSlider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Nike Sports shoe',
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )),
                            SizedBox(width: 90, child: IncDecFormFeild()),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.5'),
                            const SizedBox(width: 8,),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Review',
                                style: TextStyle(
                                  color: AppColors.PrimariyColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: AppColors.PrimariyColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 18,
                              ),
                            )
                          ],
                        ),
                        Text('color',style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        )),
                        const SizedBox(height: 8,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for(int i= 0; i<5;i++)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.PrimariyColor,
                                    child: Icon(Icons.check),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Text('Size',style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        )),
                        const SizedBox(height: 8,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for(int i= 0; i<5;i++)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54,width: 2),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text('XL'),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Text('Description',style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        )),
                        const SizedBox(height: 8,),
                        Text("""Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.""",
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: 0.4,
                          color: Colors.black54
                        ),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
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
                    width: 120,
                    child: AppElevetedButton(text: 'Add To Cart', onTap: () {}))
              ],
            ),
          )
        ],
      ),
    );
  }
}
