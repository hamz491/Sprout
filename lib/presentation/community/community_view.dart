import 'package:flutter/material.dart';
import 'package:sprout/presentation/community/widgets/community_body.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF4F6FA),
        body: CommunityBody(),
      ),
    );
  }
}
