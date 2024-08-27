import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/community/widgets/the_post/custom_post_image.dart';
import 'package:sprout/presentation/community/widgets/the_post/custom_post_title.dart';
import 'package:sprout/presentation/community/widgets/the_post/like_coment_share.dart';
import 'package:sprout/presentation/community/widgets/the_post/post_appbar.dart';

class MyPostCard extends StatelessWidget {
  const MyPostCard({
    super.key,
    required this.profileImage,
    required this.name,
    required this.date,
    required this.postTitle,
    required this.hashTag,
    required this.postImage,
    this.isMe = true,
  });
  final String profileImage;
  final String name;
  final String date;
  final String postTitle;
  final String hashTag;
  final String postImage;
  final bool? isMe;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: double.infinity,
      color: const Color(0xffBCDCD1).withOpacity(.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostAppbar(
            profileImage: profileImage,
            name: name,
            date: date,
            isMe: isMe,
          ),
          verticalSpace(10),
          CustomPostTitle(postTitle: postTitle, hashTag: hashTag),
          verticalSpace(10),
          CustomPostImage(postImage: postImage),
          verticalSpace(20),
          const LikeComentShare(),
        ],
      ),
    );
  }
}
