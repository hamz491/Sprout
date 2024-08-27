import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sprout/core/utils/spacing.dart';

import 'icon_txt.dart';

class LikeComentShare extends StatelessWidget {
  const LikeComentShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const IconTxt(
          icon: Icons.favorite_border,
          txt: "20",
        ),
        horizontalspace(47),
        const IconTxt(
          icon: FontAwesomeIcons.comment,
          txt: "13",
        ),
        horizontalspace(47),
        const IconTxt(
          icon: FontAwesomeIcons.share,
          txt: "Share",
        ),
      ],
    );
  }
}
