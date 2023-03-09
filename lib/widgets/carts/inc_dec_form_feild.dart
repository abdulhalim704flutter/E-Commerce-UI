import 'package:flutter/material.dart';

import '../../ui/utils/app-colors.dart';

class IncDecFormFeild extends StatefulWidget {
  const IncDecFormFeild({
    Key? key,
  }) : super(key: key);



  @override
  State<IncDecFormFeild> createState() => _IncDecFormFeildState();
}

class _IncDecFormFeildState extends State<IncDecFormFeild> {
  int currentValue = 1;
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = currentValue.toString();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (currentValue > 1) {
              currentValue--;
              controller.text = currentValue.toString();
            }
          },
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: AppColors.PrimariyColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(
              Icons.remove,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Expanded(
            child: TextFormField(
              controller: controller,
              readOnly: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            )),
        const SizedBox(
          width: 3,
        ),
        GestureDetector(
          onTap: () {
            currentValue++;
            controller.text = currentValue.toString();
          },
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: AppColors.PrimariyColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(
              Icons.add,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}