import 'package:flutter/material.dart';

import '../../ui/utils/app-colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.HeaderName,
    required this.onTapSeeAll,
  }) : super(key: key);
  final String HeaderName;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          HeaderName,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 0.6),
        ),
        TextButton(
          onPressed: () {
            onTapSeeAll;
          },
          child: Text(
            'See All',
            style: TextStyle(color: AppColors.PrimariyColor),
          ),
        )
      ],
    );
  }
}
