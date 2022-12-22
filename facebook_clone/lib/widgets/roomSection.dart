import 'package:facebook_clone/section/avathar.dart';
import 'package:facebook_clone/widgets/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        children: [
           createRoomButton(),
          Row(
            children: [
              Avathar(avatharName: dq,displayStatus: true,),
              Avathar(avatharName: mohanlaal,displayStatus: true,),
              Avathar(avatharName: dileep,displayStatus: true,),
              Avathar(avatharName: surya,displayStatus:true),
              Avathar(avatharName: prithvi,displayStatus:true),
              Avathar(avatharName: tovino,displayStatus:true),
              Avathar(avatharName: unnimukundhan,displayStatus:true),
             
            ],
          )
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(
              color: Colors.blue,
              width: 2,
            )),
        onPressed: () {
          print('clicked');
        },
        label: Text('Create \n Room',
        style: TextStyle(
          fontSize: 15,
        ),
        ),
        icon: Icon(
          Icons.room,
          color: Colors.pink,
          size: 20,
        ),
      ),
    );
  }
}
