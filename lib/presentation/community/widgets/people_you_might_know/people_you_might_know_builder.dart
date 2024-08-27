import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/presentation/community/widgets/people_you_might_know/you_might_know_card.dart';

class PeopleYouMightKnowBuilder extends StatelessWidget {
  const PeopleYouMightKnowBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: SizedBox(
        height: 260.h,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 19.w),
              child: const YouMightKnowCard(),
            );
          },
        ),
      ),
    );
  }
}
