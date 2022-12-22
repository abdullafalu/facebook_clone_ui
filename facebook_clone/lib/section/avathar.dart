import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  final String avatharName;
  final bool displayStatus;
  final bool displayBoarder;
  final double width;
  final double height;
  Avathar({
    required this.avatharName,
    required this.displayStatus,
    this.displayBoarder = false,
    this.height=50,
    this.width=50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBoarder
                ? Border.all(
                    width: 3,
                    color: Colors.blueAccent,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(
            left: 2,
            right: 2,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              avatharName,
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
