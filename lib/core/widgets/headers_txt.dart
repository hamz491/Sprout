import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';

class HeadersTxt extends StatelessWidget {
  const HeadersTxt({
    super.key,
    required this.righTxt,
    required this.leftTxt,
  });
  final String righTxt;
  final String leftTxt;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          righTxt,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          leftTxt,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: MyColors.darkGreen,
          ),
        ),
      ],
    );
  }
}
