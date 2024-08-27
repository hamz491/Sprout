import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sprout/core/utils/constants.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/core/widgets/custom_button.dart';
import 'package:sprout/presentation/community/widgets/create_post/bottom_sheet_appbar.dart';
import 'package:sprout/presentation/community/widgets/create_post/custom_icon_txt.dart';
import 'package:sprout/presentation/community/widgets/create_post/personal_info.dart';
import 'package:sprout/presentation/community/widgets/create_post/post_text_field.dart';

Future<dynamic> customBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    enableDrag: true,
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(50),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(30),
              const BottomSheetAppbar(),
              verticalSpace(47),
              const PersonalInfo(),
              verticalSpace(10),
              const PostTextFormField(),
              verticalSpace(12),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: CustomIconTxt(
                  icon: const Icon(
                    Icons.image_outlined,
                    color: MyColors.green,
                    size: 25,
                  ),
                  txt: "Photos/Videos",
                  fontSize: 14,
                  onTap: () async {
                    await ImagePicker().pickMultiImage();
                  },
                ),
              ),
              verticalSpace(33),
              CustomButton(
                onTap: () {
                  Navigator.of(context).pop();
                },
                fontSize: 18,
                txt: "Post",
                backgroundColor: MyColors.darkGreen,
                height: 50.h,
                width: 270.w,
              ),
              verticalSpace(30),
            ],
          ),
        ),
      );
    },
  );
}
