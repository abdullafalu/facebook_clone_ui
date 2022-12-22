import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {

  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color buttonColor;
  AppBarIcons({
    required this.buttonIcon,
    required this.buttonAction,
    this.buttonColor=Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              margin:const EdgeInsets.only(right: 5),
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 233, 227, 227),
              ),
              child: IconButton(
                onPressed: buttonAction,
                icon: Icon(buttonIcon,
                color: buttonColor,
                ),
              ),
            );
  }
}