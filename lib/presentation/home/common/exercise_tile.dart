import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';

class ContentTile extends StatelessWidget {
  const ContentTile({
    super.key,
    required this.circleColor,
    required this.title,
    required this.subTitle,
    required this.num1,
    required this.num2,
  });
  final Color circleColor;
  final String title;
  final String subTitle;
  final String num1;
  final String num2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.h),
              child: CircleAvatar(
                backgroundColor: circleColor,
                radius: 6,
              ),
            ),
            horizontalspace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                verticalSpace(5),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: num1,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: num2,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff2D3142),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
