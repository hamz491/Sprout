import 'package:flutter/material.dart';
import 'package:sprout/presentation/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF4F6FA),
        body: HomeviewBody(),
      ),
    );
  }
}
