import 'package:facebook_clone/section/avathar.dart';
import 'package:facebook_clone/widgets/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avathar(avatharName: dq,displayStatus: false,),
        title: TextField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      );
   
  }
}