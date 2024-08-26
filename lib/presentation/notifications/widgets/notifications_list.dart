import 'package:flutter/widgets.dart';
import 'package:sprout/presentation/notifications/widgets/notifications_tile.dart';

List<Widget> notificationsList = const [
  NotificationsTile(
    title: "Congratulations",
    subTitle: "35% Your Daily Challenge Completed",
    date: "9:45 AM",
    isNew: true,
  ),
  NotificationsTile(
    title: "Attention",
    subTitle: "Your subscription is going to expire very soon. Subscribe now.",
    date: "9:38 AM",
    isNew: false,
  ),
  NotificationsTile(
    title: "Daily Activity",
    subTitle: "Time for your workout session ",
    date: "8:25 AM",
    isNew: false,
  ),
];
