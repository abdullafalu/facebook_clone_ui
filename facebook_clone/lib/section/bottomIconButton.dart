import 'package:flutter/material.dart';

Widget headerButton({
    required String buttonText,
    required Color buttonColor,
    required void Function() buttonAction,
    required IconData buttonIcon,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }