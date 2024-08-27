import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostTextFormField extends StatelessWidget {
  const PostTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 189.h,
      child: TextFormField(
        expands: true,
        maxLines: null,
        style: const TextStyle(fontSize: 19),
        decoration: InputDecoration(
          hintText: 'What’s On Your Mind?',
          hintStyle: TextStyle(
            fontSize: 27.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
          fillColor: const Color(0xffE9F1F2),
          contentPadding: EdgeInsets.only(top: 20.h, left: 30.w),
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
