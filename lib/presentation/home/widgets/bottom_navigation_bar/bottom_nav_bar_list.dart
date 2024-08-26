import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<BottomNavigationBarItem> bottomNavigationBarList = [
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: const Icon(Icons.home),
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: const Icon(Icons.notifications_none),
    ),
    label: "Notifications",
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: const Icon(Icons.groups_2),
    ),
    label: "Community",
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: const Icon(Icons.person),
    ),
    label: "Profile",
  ),
];
