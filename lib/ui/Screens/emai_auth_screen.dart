import 'package:e_commerece/ui/Screens/verify_otp_screen.dart';
import 'package:e_commerece/ui/style/style.dart';
import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:e_commerece/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_text_feild_widget.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({Key? key}) : super(key: key);

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 46,
                ),
                AppLogo(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Welcome Back",
                  style: Head1Text(colorBlack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Please Enter Your Email Eddress",
                  style: Head6Text(colorGrey, .6),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFeildWidget(
                  controller: TextEditingController(),
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevetedButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyOtpScreen()));
                  },
                  text: 'Next',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
