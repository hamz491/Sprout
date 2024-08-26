import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/home/common/exercise_tile.dart';

class ExercisesCard extends StatelessWidget {
  const ExercisesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: 215.w,
      decoration: BoxDecoration(
        color: const Color(0xffDeFFF4),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: MyColors.green,
          width: .5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 20.w),
            child: const ContentTile(
              circleColor: Color(0xffFF269A),
              title: "Squads",
              subTitle: "Calves, Legs, Thighs",
              num1: "15",
              num2: "x3",
            ),
          ),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 20.w),
            child: const ContentTile(
              circleColor: Color(0xff83AfDE),
              title: "Push-Ups",
              subTitle: "Biceps, Triceps, Shoulders",
              num1: "12",
              num2: "x4",
            ),
          ),
        ],
      ),
    );
  }
}
