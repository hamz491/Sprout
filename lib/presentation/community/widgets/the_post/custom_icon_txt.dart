import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.icon,
    required this.txt,
  });

  final Icon icon;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        horizontalspace(8),
        Text(
          txt,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
