import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';

class CustomIconTxt extends StatelessWidget {
  const CustomIconTxt({
    super.key,
    required this.icon,
    required this.txt,
    required this.fontSize,
    this.onTap,
  });
  final Icon icon;
  final String txt;
  final int fontSize;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          icon,
          horizontalspace(4),
          Text(
            txt,
            style: TextStyle(
              fontSize: fontSize.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
