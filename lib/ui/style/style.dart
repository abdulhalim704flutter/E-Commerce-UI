import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);
const colorGrey = Color.fromRGBO(192, 192, 192, 1);
const colorBlack = Colors.black54;

SvgPicture AppLogo() {
  return SvgPicture.asset(
    "assets/images/craftybaylogo.svg",
    width: 150,
    fit: BoxFit.scaleDown,
  );
}


TextStyle Head1Text(TextColor) {
  return TextStyle(color: TextColor, fontSize: 28, fontWeight: FontWeight.w700);
}

TextStyle Head6Text(TextColor,spacing) {
  return TextStyle(
    fontSize: 16,
    color: TextColor,
    fontWeight: FontWeight.w400,
    letterSpacing: spacing,
  );
}
