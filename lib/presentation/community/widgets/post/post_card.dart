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
      height: 133,
      decoration: const BoxDecoration(
        color: Color(0xffE9F1F2),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 10.h, right: 5.w),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Row(
                    children: [
                      const CustomCircleImage(),
                      horizontalspace(10),
                      const CustomTextBar(),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Color(0xffADADAD),
                ),
              ],
            ),
            verticalSpace(24),
            Padding(
              padding: EdgeInsets.only(right: 51.w),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconTxt(
                    icon: Icon(
                      Icons.image_outlined,
                      color: MyColors.green,
                    ),
                    txt: "Upload Photo",
                  ),
                  CustomIconTxt(
                    icon: Icon(
                      Icons.sentiment_very_satisfied_outlined,
                      color: Color(0xffF8A6B6),
                    ),
                    txt: "Activity/Felling",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
