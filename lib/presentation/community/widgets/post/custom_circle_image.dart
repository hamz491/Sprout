import 'package:flutter/material.dart';

class CustomCircleImage extends StatelessWidget {
  const CustomCircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage("assets/images/personal_image.png"),
    );
  }
}
