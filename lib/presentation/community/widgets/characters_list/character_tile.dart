import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/community/widgets/characters_list/custom_add_icon.dart';
import 'package:sprout/presentation/community/widgets/characters_list/custom_label.dart';
import 'package:sprout/presentation/community/widgets/characters_list/custom_story_circle.dart';

class CharacterTile extends StatelessWidget {
  const CharacterTile({
    super.key,
    required this.image,
    required this.label,
    this.isMe = false,
  });
  final String image;
  final String label;
  final bool? isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomStoryCircle(image: image, isMe: isMe!),
              isMe! ? const CustomAddIcon() : Container(),
            ],
          ),
          verticalSpace(5),
          CustomLabel(label: label, isMe: isMe!),
        ],
      ),
    );
  }
}
