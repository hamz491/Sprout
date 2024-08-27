import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPostImage extends StatelessWidget {
  const CustomPostImage({super.key, required this.postImage});
  final String postImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 28.w, left: 32.w),
      height: 220.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            postImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
