import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/home/common/cards_builder.dart';
import 'package:sprout/core/widgets/headers_txt.dart';
import 'package:sprout/presentation/home/widgets/top_part/calories_card.dart';
import 'package:sprout/presentation/home/widgets/top_part/most_active_days_card.dart';
import 'package:sprout/presentation/home/widgets/top_part/notifications_icon.dart';
import 'package:sprout/presentation/home/widgets/top_part/personal_image_name.dart';
import 'package:sprout/presentation/home/widgets/top_part/exercises_card.dart';
import 'package:sprout/presentation/home/widgets/builders_part/workout_lessons_card.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //>>>>>>>>>>>>>> app Bar
                verticalSpace(17),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PersonalImageName(),
                    NotificationsIcon(),
                  ],
                ),
                //>>>>>>>>>>>>>> Todays Activitys
                verticalSpace(30),
                const HeadersTxt(
                  righTxt: "Today’s Activity",
                  leftTxt: "See Details",
                ),
                verticalSpace(16),
                const Row(
                  children: [
                    CaloriesCard(),
                    Spacer(),
                    ExercisesCard(),
                  ],
                ),
                //>>>>>>>>>>>>>> Most Actice Days Card
                verticalSpace(28),
                const MostActiveCard(),
                //>>>>>>>>>>>>>> Workout Headers Txt
                verticalSpace(28),
                const HeadersTxt(
                  righTxt: "Workout Lessons",
                  leftTxt: "See Details",
                ),
                verticalSpace(14),
              ],
            ),
          ),
          //>>>>>>>>>>>>>> Workout Cards Builder
          const CardsBuilder(
            child: WorkoutLessonsCard(),
          ),
          //>>>>>>>>>>>>>> Nutrition Plans Headers Txt
          verticalSpace(28),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: const HeadersTxt(
              righTxt: "Nutrition Plans ",
              leftTxt: "See Details",
            ),
          ),
          //>>>>>>>>>>>>>> Nutrition Cards Builder
          verticalSpace(14),
          const CardsBuilder(
            child: WorkoutLessonsCard(),
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
