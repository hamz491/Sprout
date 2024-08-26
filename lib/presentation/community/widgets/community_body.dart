import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/core/widgets/headers_txt.dart';
import 'package:sprout/presentation/community/widgets/app_bar/custom_appbar.dart';
import 'package:sprout/presentation/community/widgets/characters_list/story_char_list_view.dart';
import 'package:sprout/presentation/community/widgets/people_you_might_know/you_might_know_card.dart';
import 'package:sprout/presentation/community/widgets/post/post_card.dart';

class CommunityBody extends StatelessWidget {
  const CommunityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(15),
        const CustomAppbar(),
        verticalSpace(15),
        const StoryCharListView(),
        verticalSpace(10),
        const PostCard(),
        verticalSpace(21),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const HeadersTxt(
            righTxt: "People You Might Know",
            leftTxt: "See All",
          ),
        ),
        verticalSpace(18),
        const YouMightKnowCard(),
      ],
    );
  }
}
