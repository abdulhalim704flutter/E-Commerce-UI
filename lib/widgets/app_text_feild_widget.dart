
import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:flutter/material.dart';

class AppTextFeildWidget extends StatelessWidget {
  const AppTextFeildWidget({
    Key? key,
    required this.controller,
    required this.hintText,this.maxLine,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine ?? 1,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.PrimariyColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.PrimariyColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.PrimariyColor),
          )),
    );
  }
}