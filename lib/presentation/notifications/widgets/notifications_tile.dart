import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.isNew,
  });
  final String title;
  final String subTitle;
  final String date;
  final bool isNew;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, right: 24.w, left: 39.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  isNew
                      ? Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                        )
                      : Container(),
                  horizontalspace(7),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          verticalSpace(10),
          Text(
            subTitle,
            maxLines: 2,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          verticalSpace(10),
          const Divider(
            thickness: 1,
            color: Color(0xffDADADA),
          ),
        ],
      ),
    );
  }
}
