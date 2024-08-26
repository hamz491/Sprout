import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';

class CustomStoryCircle extends StatelessWidget {
  const CustomStoryCircle({
    super.key,
    required this.isMe,
    required this.image,
  });
  final bool isMe;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.w,
      height: 58.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: !isMe
            ? Border.all(
                color: MyColors.green,
                width: 1,
              )
            : const Border(),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
