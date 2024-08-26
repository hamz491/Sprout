import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sprout/core/utils/spacing.dart';
import 'package:sprout/presentation/community/widgets/my_post/custom_icon_txt.dart';

class LikeComentShare extends StatelessWidget {
  const LikeComentShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomIconTxt(
          icon: Icons.favorite_border,
          txt: "20",
        ),
        horizontalspace(47),
        const CustomIconTxt(
          icon: FontAwesomeIcons.comment,
          txt: "13",
        ),
        horizontalspace(47),
        const CustomIconTxt(
          icon: FontAwesomeIcons.share,
          txt: "Share",
        ),
      ],
    );
  }
}
