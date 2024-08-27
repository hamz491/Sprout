import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';

class CustomPostTitle extends StatelessWidget {
  const CustomPostTitle({
    super.key,
    required this.postTitle,
    required this.hashTag,
  });

  final String postTitle;
  final String hashTag;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: postTitle,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff1E293B),
              ),
            ),
            TextSpan(
              text: hashTag,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: MyColors.darkGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
