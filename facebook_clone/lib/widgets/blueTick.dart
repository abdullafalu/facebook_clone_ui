import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Icon(
        Icons.check,
        size: 10,
        color: Colors.white,
      ),
    );
  }
}
