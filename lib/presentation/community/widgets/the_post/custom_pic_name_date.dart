import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';

class CustomPicNameDate extends StatelessWidget {
  const CustomPicNameDate({
    super.key,
    required this.profileImage,
    required this.name,
    required this.date,
  });
  final String profileImage;
  final String name;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 21,
          backgroundImage: AssetImage(profileImage),
        ),
        horizontalspace(5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                date,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff9C9EB9),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
