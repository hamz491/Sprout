import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/community/widgets/app_bar/custom_notification_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("assets/images/sprout_txt.svg"),
          Row(
            children: [
              const CustomNotificationIcon(
                icon: Icons.favorite_border_sharp,
              ),
              horizontalspace(10),
              const CustomNotificationIcon(
                icon: Icons.notifications_none,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
