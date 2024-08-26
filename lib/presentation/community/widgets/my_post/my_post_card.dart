import 'package:flutter/material.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/community/widgets/my_post/custom_post_image.dart';
import 'package:sprout/presentation/community/widgets/my_post/custom_post_title.dart';
import 'package:sprout/presentation/community/widgets/my_post/like_coment_share.dart';
import 'package:sprout/presentation/community/widgets/my_post/post_appbar.dart';

class MyPostCard extends StatelessWidget {
  const MyPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 358,
      width: double.infinity,
      color: const Color(0xffBCDCD1).withOpacity(.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PostAppbar(),
          verticalSpace(10),
          const CustomPostTitle(),
          verticalSpace(10),
          const CustomPostImage(),
          verticalSpace(13),
          const LikeComentShare(),
        ],
      ),
    );
  }
}
