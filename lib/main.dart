import 'package:e_commerece/ui/Screens/emai_auth_screen.dart';
import 'package:e_commerece/ui/Screens/splashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CraftBayApp());
}

class CraftBayApp extends StatelessWidget {
  const CraftBayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

