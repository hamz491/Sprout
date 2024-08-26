import 'package:flutter/material.dart';
import 'package:sprout/presentation/community/widgets/characters_list/character_tile.dart';

List<Widget> storyList = [
  const CharacterTile(
    image: "assets/story_images/my_story_image.png",
    label: "Your Story",
    isMe: true,
  ),
  const CharacterTile(
    image: "assets/story_images/story1.png",
    label: "Mahy_66",
  ),
  const CharacterTile(
    image: "assets/story_images/story2.png",
    label: "Mogoio8",
  ),
  const CharacterTile(
    image: "assets/story_images/story3.png",
    label: "Bogy_mo",
  ),
  const CharacterTile(
    image: "assets/story_images/story4.png",
    label: "Sandra76",
  ),
];
