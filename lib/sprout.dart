import 'package:flutter/material.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/presentation/home/widgets/bottom_navigation_bar/bottom_nav_bar_list.dart';
import 'package:sprout/presentation/home/widgets/bottom_navigation_bar/navigation_list.dart';

class Sprout extends StatefulWidget {
  const Sprout({super.key});

  @override
  State<Sprout> createState() => _SproutState();
}

class _SproutState extends State<Sprout> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6FA),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: MyColors.darkGreen,
        backgroundColor: const Color(0xffE7E9EF),
        iconSize: 28,
        selectedFontSize: 12,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        items: bottomNavigationBarList,
      ),
      body: Center(
        child: navigationList[selectedIndex],
      ),
    );
  }
}
