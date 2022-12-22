

import 'package:flutter/material.dart';

class StatusIconButton extends StatelessWidget {

  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  StatusIconButton({
   required this.buttonOne,
   required this.buttonThree,
   required this.buttonTwo,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          VerticalDivider(
            thickness: 2,
          ),
          buttonTwo,
          VerticalDivider(
            thickness: 2,
          ),
          buttonThree,
        ],
      ),
    );
  }
}
