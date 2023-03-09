import 'package:e_commerece/ui/Screens/product_details_screen.dart';
import 'package:flutter/material.dart';

import '../ui/utils/app-colors.dart';

class ProductItemPreviewCard extends StatelessWidget {
  const ProductItemPreviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsScreen()));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/shoe1.png',
              height: 80,
              width: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Product Name',
              maxLines: 2,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.black54,
                  letterSpacing: 0.4,
                  overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$800',
                  style: TextStyle(
                    color: AppColors.PrimariyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 14,
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: AppColors.PrimariyColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.favorite_border,
                        size: 18,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
