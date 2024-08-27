import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sprout/core/utils/constants.dart';

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await ImagePicker().pickMultiImage();
      },
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.darkGreen,
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xffF4F6FA),
            width: 2.3,
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 19,
        ),
      ),
    );
  }
}
