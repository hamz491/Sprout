import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sprout/presentation/community/widgets/the_post/custom_icon_txt.dart';

List<PopupMenuItem> popupItmes = const [
  PopupMenuItem(
    child: NewWidget(
      icon: Icon(
        FontAwesomeIcons.share,
        size: 20,
      ),
      txt: "Share",
    ),
  ),
  PopupMenuItem(
    child: NewWidget(
      icon: Icon(
        Icons.add_circle_outlined,
        size: 20,
      ),
      txt: "Show More ",
    ),
  ),
  PopupMenuItem(
    child: NewWidget(
      icon: Icon(
        Icons.remove_circle_outlined,
        size: 20,
      ),
      txt: "Show Less",
    ),
  ),
  PopupMenuItem(
    child: NewWidget(
      icon: Icon(
        Icons.error_outlined,
        size: 20,
      ),
      txt: "Report To Admin",
    ),
  ),
];
