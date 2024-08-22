import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';

class NotificationsIcon extends StatelessWidget {
  const NotificationsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: MyColors.green,
              width: 1,
            ),
          ),
        ),
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Image.asset("assets/images/noti.png"),
            Image.asset("assets/images/red.png"),
            //  Icon(
            //   Icons.notifications_none,
            //   size: 22,
            // ),
            // Container(
            //   height: 8.h,
            //   width: 8.w,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.red,
            //     border: Border.all(
            //       color: Colors.white,
            //       width: 1,
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
