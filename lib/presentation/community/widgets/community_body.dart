import 'package:flutter/material.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/community/widgets/app_bar/custom_appbar.dart';
import 'package:sprout/presentation/community/widgets/characters_list/story_char_list_view.dart';
import 'package:sprout/presentation/community/widgets/my_post/my_post_card.dart';
import 'package:sprout/presentation/community/widgets/post/post_card.dart';

class CommunityBody extends StatelessWidget {
  const CommunityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        const CustomAppbar(),
        verticalSpace(16),
        const StoryCharListView(),
        verticalSpace(10),
        const PostCard(),
        verticalSpace(9),
        const MyPostCard(),
        verticalSpace(32),
      ],
    );
  }
}
