import 'package:flutter/material.dart';

class OverlappingCircle extends StatelessWidget {
  const OverlappingCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // First Circle Image
        Positioned(
          child: ClipOval(
            child: Image.asset(
              'assets/images/background_image.jpeg', // Replace with your image URL
              width: 12,
              height: 12,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Second Circle Image (Overlapping the first)
        Positioned(
          left: 8,
          child: ClipOval(
            child: Image.asset(
              'assets/people_you_might_know_images/1.png', // Replace with your image URL
              width: 12,
              height: 12,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
