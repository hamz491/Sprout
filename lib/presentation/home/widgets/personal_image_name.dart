import 'package:flutter/material.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';

class PersonalImageName extends StatelessWidget {
  const PersonalImageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          minRadius: 42,
          backgroundImage: AssetImage("assets/images/personal_image.png"),
        ),
        horizontalspace(10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "welcome back",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: MyColors.green,
              ),
            ),
            Text(
              "sara draz!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
