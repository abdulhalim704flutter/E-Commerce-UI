import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:flutter/material.dart';
class AppElevetedButton extends StatelessWidget {
  const AppElevetedButton({
    Key? key, required this.text, required this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: AppColors.PrimariyColor,
          padding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}