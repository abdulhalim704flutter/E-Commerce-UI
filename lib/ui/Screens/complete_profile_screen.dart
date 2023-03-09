import 'package:e_commerece/ui/Screens/main_bottom_navigationbar.dart';
import 'package:e_commerece/ui/style/style.dart';
import 'package:e_commerece/widgets/app_elevated_button.dart';
import 'package:e_commerece/widgets/app_text_feild_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 46,
                ),
                AppLogo(),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Complete Profile',
                  style: Head1Text(colorBlack),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Get Started with us with your details',
                  style: Head6Text(colorGrey, 0.6),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFeildWidget(
                    controller: TextEditingController(),
                    hintText: "Frist Name"),
                const SizedBox(
                  height: 8,
                ),
                AppTextFeildWidget(
                    controller: TextEditingController(), hintText: "Last Name"),
                const SizedBox(
                  height: 8,
                ),
                AppTextFeildWidget(
                    controller: TextEditingController(), hintText: "Mobile"),
                const SizedBox(
                  height: 8,
                ),
                AppTextFeildWidget(
                    controller: TextEditingController(), hintText: "City"),
                const SizedBox(
                  height: 8,
                ),
                AppTextFeildWidget(
                    maxLine: 4,
                    controller: TextEditingController(),
                    hintText: "Shipping Address"),
                const SizedBox(
                  height: 16,
                ),
                AppElevetedButton(
                    text: 'Complete',
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> MainBottomNavigationBar()), (route) => false);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
