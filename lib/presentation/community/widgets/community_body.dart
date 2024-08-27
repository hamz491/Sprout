import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/core/widgets/headers_txt.dart';
import 'package:sprout/presentation/community/widgets/app_bar/custom_appbar.dart';
import 'package:sprout/presentation/community/widgets/characters_list/story_char_list_view.dart';
import 'package:sprout/presentation/community/widgets/people_you_might_know/people_you_might_know_builder.dart';
import 'package:sprout/presentation/community/widgets/create_post/post_card.dart';
import 'package:sprout/presentation/community/widgets/the_post/my_post_card.dart';

class CommunityBody extends StatelessWidget {
  const CommunityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(16),
          const CustomAppbar(),
          verticalSpace(16),
          const StoryCharListView(),
          verticalSpace(10),
          const PostCard(),
          verticalSpace(9),
          const MyPostCard(
            profileImage: "assets/images/personal_image.png",
            name: "Sara_draz",
            date: "14m ago",
            postTitle: "day two of losing fats wish me luck",
            hashTag: " #losing_fats",
            postImage: "assets/images/mypost_background.png",
          ),
          verticalSpace(32),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: const HeadersTxt(
                righTxt: "people you might know",
                leftTxt: "see all",
              )),
          verticalSpace(24),
          const PeopleYouMightKnowBuilder(),
          verticalSpace(24),
          const MyPostCard(
            profileImage: "assets/images/otherProfile_image.png",
            name: "Fady_adalat",
            date: "17h ago",
            postTitle:
                "Today, I went jogging in the morning for half an hour. I'm happy with this progress.",
            hashTag: " #jogging",
            postImage: "assets/images/otherProfile_post_background.png",
            isMe: false,
          ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
