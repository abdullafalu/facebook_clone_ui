import 'package:facebook_clone/widgets/assets.dart';
import 'package:facebook_clone/widgets/storyCards.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCards(
            avathar: dq,
            labelText: 'Add your Story',
            storyBackgroundImage: dq,
            createStoryStatus: true,
            displayBoarder: false,
          ),
          StoryCards(
              labelText: 'Surya Official',
              avathar: surya,
              storyBackgroundImage: mammottypost,
              displayBoarder: true,
              ),
          StoryCards(
            labelText: 'Actor Dileep',
            avathar: dileep,
            storyBackgroundImage: dileeppost,
            displayBoarder: true,
          ),
          StoryCards(
            labelText: 'Mohanlal',
            avathar: mohanlaal,
            storyBackgroundImage: mohanlaalpost,
            displayBoarder: true,
          ),
          StoryCards(
            labelText: 'Prithviraj',
            avathar: prithvi,
            storyBackgroundImage: prithvipost,
            displayBoarder: true,
          ),
          StoryCards(
            labelText: 'Tovino',
            avathar: tovino,
            storyBackgroundImage: tovinopost,
            displayBoarder: true,
          ),
        ],
      ),
    );
  }
}
