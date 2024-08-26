import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';

class DaysTile extends StatelessWidget {
  const DaysTile({
    super.key,
    required this.txt,
    required this.height,
    this.color,
  });
  final String txt;
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 11.w,
            height: height.h,
            decoration: BoxDecoration(
              color: color ?? MyColors.green.withOpacity(.4),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          verticalSpace(10),
          Text(
            txt,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
