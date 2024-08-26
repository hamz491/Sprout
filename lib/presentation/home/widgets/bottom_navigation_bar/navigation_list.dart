import 'package:flutter/material.dart';
import 'package:sprout/presentation/community/community_view.dart';
import 'package:sprout/presentation/home/home_view.dart';
import 'package:sprout/presentation/notifications/notifications_view.dart';
import 'package:sprout/presentation/profile/profile_view.dart';

List<Widget> navigationList = const [
  HomeView(),
  NotificationsView(),
  CommunityView(),
  ProfileView(),
];
