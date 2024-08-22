import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/home/widgets/notifications_icon.dart';
import 'package:sprout/presentation/home/widgets/personal_image_name.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          verticalSpace(17),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PersonalImageName(),
              NotificationsIcon(),
            ],
          ),
        ],
      ),
    );
  }
}
