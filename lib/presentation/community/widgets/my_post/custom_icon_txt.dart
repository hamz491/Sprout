import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';

class CustomIconTxt extends StatelessWidget {
  const CustomIconTxt({
    super.key,
    required this.icon,
    required this.txt,
  });
  final IconData icon;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: MyColors.darkGreen,
          size: 16,
        ),
        horizontalspace(3),
        Text(
          txt,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
