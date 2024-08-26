import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/presentation/community/widgets/my_post/custom_pic_name_date.dart';

class PostAppbar extends StatelessWidget {
  const PostAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 21.w, left: 32.w, top: 17.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomPicNameDate(),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
