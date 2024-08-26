import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Icon(
          icon,
          size: 26,
        ),
        Container(
          height: 8.h,
          width: 8.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xffF8A6B6),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
      ],
    );
  }
}
