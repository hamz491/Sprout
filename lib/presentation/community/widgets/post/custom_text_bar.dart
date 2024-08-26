import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextBar extends StatelessWidget {
  const CustomTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.w,
      height: 34.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 29.w, right: 12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "What Do You Think Sara?",
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff898A8D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
