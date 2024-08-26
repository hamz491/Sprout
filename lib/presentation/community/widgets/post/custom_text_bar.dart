import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextBar extends StatelessWidget {
  const CustomTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265.w,
      height: 39.h,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9).withOpacity(.4),
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
                fontWeight: FontWeight.w500,
                color: const Color(0xff898A8D),
              ),
            ),
            const Icon(
              Icons.mic,
              color: Color(0xff979797),
            ),
          ],
        ),
      ),
    );
  }
}
