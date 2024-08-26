import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/community/widgets/post/custom_circle_image.dart';
import 'package:sprout/presentation/community/widgets/post/custom_icon_txt.dart';
import 'package:sprout/presentation/community/widgets/post/custom_text_bar.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 81,
      decoration: const BoxDecoration(
        color: Color(0xffE9F1F2),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 10.w),
        child: Row(
          children: [
            const CustomCircleImage(),
            horizontalspace(8),
            const CustomTextBar(),
            horizontalspace(19),
            const CustomIconTxt(
              icon: Icon(Icons.image_outlined, color: MyColors.green, size: 18),
              txt: "Upload Photo",
            ),
          ],
        ),
      ),
    );
  }
}
