import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/core/widgets/custom_button.dart';
import 'package:sprout/presentation/community/widgets/people_you_might_know/overlapping_circle.dart';

class YouMightKnowCard extends StatefulWidget {
  const YouMightKnowCard({super.key});

  @override
  State<YouMightKnowCard> createState() => _YouMightKnowCardState();
}

class _YouMightKnowCardState extends State<YouMightKnowCard> {
  bool sendAdd = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 258.h,
      width: 209.w,
      decoration: BoxDecoration(
        color: const Color(0xffE3EEEE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              "assets/images/background_image.jpeg",
              fit: BoxFit.fill,
              height: 155.h,
            ),
          ),
          verticalSpace(7),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              "Pola_gorgei",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          verticalSpace(5),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Row(
              children: [
                const OverlappingCircle(),
                horizontalspace(13),
                Text(
                  "15 mutual friend",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: MyColors.darkGreen,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(12),
          sendAdd
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      backgroundColor: const Color(0xffD6D9E0),
                      txt: "Cancel",
                      height: 23.h,
                      width: 86.w,
                      fontSize: 10,
                    ),
                    horizontalspace(5),
                    CustomButton(
                      onTap: () {
                        setState(() {
                          sendAdd = !sendAdd;
                        });
                      },
                      backgroundColor: MyColors.green,
                      txt: "Send Add",
                      height: 23.h,
                      width: 86.w,
                      fontSize: 10,
                    ),
                  ],
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CustomButton(
                    onTap: () {
                      setState(() {
                        sendAdd = !sendAdd;
                      });
                    },
                    backgroundColor: Colors.white,
                    txt: "Now You Are Friends",
                    height: 23.h,
                    width: double.infinity,
                    fontSize: 10,
                  ),
                ),
        ],
      ),
    );
  }
}
