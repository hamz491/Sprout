import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/presentation/notifications/widgets/delete_notifications.dart';
import 'package:sprout/presentation/notifications/widgets/notifications_list.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: ListView.builder(
        itemCount: notificationsList.length,
        itemBuilder: (context, index) {
          return DeleteNotifications(
            myKey: ValueKey(notificationsList[index]),
            child: notificationsList[index],
          );
        },
      ),
    );
  }
}
