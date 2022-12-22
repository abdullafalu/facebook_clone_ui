import 'package:facebook_clone/section/avathar.dart';
import 'package:facebook_clone/widgets/iconButton.dart';
import 'package:flutter/material.dart';

class StoryCards extends StatelessWidget {
  final String labelText;
  final String avathar;
  final String storyBackgroundImage;
  final bool createStoryStatus;
  final bool displayBoarder;

  StoryCards({
    required this.labelText,
    required this.avathar,
    required this.storyBackgroundImage,
    this.createStoryStatus = false,
    this.displayBoarder = false,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(storyBackgroundImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 5,
              left: 5,
              child: createStoryStatus
                  ? AppBarIcons(
                      buttonIcon: Icons.add,
                      buttonAction: () {},
                      buttonColor: Colors.blue,
                    )
                  : Avathar(avatharName: avathar,
                   displayStatus: false,
                   displayBoarder: displayBoarder,

                      ),),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
