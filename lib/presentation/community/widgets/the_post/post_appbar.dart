import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/core/widgets/custom_button.dart';
import 'package:sprout/presentation/community/widgets/the_post/custom_pic_name_date.dart';
import 'package:sprout/presentation/community/widgets/the_post/popup_itmes.dart';

class PostAppbar extends StatefulWidget {
  const PostAppbar({
    super.key,
    required this.profileImage,
    required this.name,
    required this.date,
    this.isMe = true,
  });
  final String profileImage;
  final String name;
  final String date;
  final bool? isMe;

  @override
  State<PostAppbar> createState() => _PostAppbarState();
}

class _PostAppbarState extends State<PostAppbar> {
  bool follow = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w, top: 17.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomPicNameDate(
            profileImage: widget.profileImage,
            name: widget.name,
            date: widget.date,
          ),
          Row(
            children: [
              !widget.isMe!
                  ? Container(
                      child: !follow
                          ? CustomButton(
                              onTap: () {
                                setState(() {
                                  follow = !follow;
                                });
                              },
                              fontSize: 10,
                              txt: "Follow",
                              backgroundColor: const Color(0xffD6D9E0),
                              height: 23,
                              width: 86,
                            )
                          : CustomButton(
                              onTap: () {
                                setState(() {
                                  follow = !follow;
                                });
                              },
                              fontSize: 10,
                              txt: "Followed",
                              backgroundColor: MyColors.green,
                              height: 23,
                              width: 86,
                            ),
                    )
                  : Container(),
              horizontalspace(9),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: PopupMenuButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) {
                    return popupItmes;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
