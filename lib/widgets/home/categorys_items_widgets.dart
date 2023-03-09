import 'package:flutter/material.dart';

import '../../ui/utils/app-colors.dart';
class CategoryItemsWidgets extends StatelessWidget {
  const CategoryItemsWidgets({
    Key? key, this.categoryName, required this.icon, required this.onTap,
  }) : super(key: key);
  final categoryName;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Icon(
                icon,
                size: 32,
                color: AppColors.PrimariyColor,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.PrimariyColor.withOpacity(0.15),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              categoryName,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.PrimariyColor,
                letterSpacing: 0.5
                  ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}