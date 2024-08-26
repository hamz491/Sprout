import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sprout/core/utils/constants.dart';

class CircleGraph extends StatelessWidget {
  const CircleGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 18.0,
      lineWidth: 5.0,
      percent: .45,
      backgroundColor: Colors.white.withOpacity(.5),
      center: Text(
        "45%",
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w500,
          color: MyColors.pink,
        ),
      ),
      progressColor: MyColors.pink,
      circularStrokeCap: CircularStrokeCap.round,
      animation: true,
      animationDuration: 600,
    );
  }
}
