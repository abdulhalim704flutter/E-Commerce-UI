import 'package:e_commerece/ui/Screens/complete_profile_screen.dart';
import 'package:e_commerece/ui/style/style.dart';
import 'package:e_commerece/ui/utils/app-colors.dart';
import 'package:e_commerece/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                  "Enter Otp Code",
                  style: Head1Text(colorBlack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "A 6 digit otp code hase been sent",
                  style: Head6Text(colorGrey, 0.6),
                ),
                const SizedBox(
                  height: 16,
                ),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: AppColors.PrimariyColor,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevetedButton(text: "Next", onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteProfileScreen()));
                }),
                SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                      text: "This code will expire in",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: "120s",
                            style: TextStyle(
                              color: AppColors.PrimariyColor,
                            ))
                      ]),
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Resend Code'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
