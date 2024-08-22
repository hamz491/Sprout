import 'package:flutter/material.dart';
import 'package:sprout/core/utils/spacing.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            verticalSpace(17),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
