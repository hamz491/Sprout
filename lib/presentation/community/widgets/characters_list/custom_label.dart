import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    super.key,
    required this.label,
    required this.isMe,
  });
  final String label;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: isMe
          ? TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: MyColors.darkGreen,
            )
          : TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
    );
  }
}
