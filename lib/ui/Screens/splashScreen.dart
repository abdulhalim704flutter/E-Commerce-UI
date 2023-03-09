import 'package:e_commerece/ui/Screens/main_bottom_navigationbar.dart';
import 'package:e_commerece/ui/style/style.dart';
import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app-colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) => {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => MainBottomNavigationBar()),
              (route) => false),
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            AppLogo(),
            const Spacer(),
            CircularProgressIndicator(
              color: AppColors.PrimariyColor,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Version 1.0.0",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.6),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
