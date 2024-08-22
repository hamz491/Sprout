import 'package:flutter/material.dart';
import 'package:sprout/presentation/home/widgets/homeView_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: HomeviewBody(),
      ),
    );
  }
}
