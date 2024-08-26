import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/presentation/community/widgets/constants/story_list.dart';

class StoryCharListView extends StatelessWidget {
  const StoryCharListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: storyList,
        ),
      ),
    );
  }
}
