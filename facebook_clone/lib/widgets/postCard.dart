import 'package:facebook_clone/section/avathar.dart';
import 'package:facebook_clone/section/bottomIconButton.dart';
import 'package:facebook_clone/section/statusIconButton.dart';
import 'package:facebook_clone/widgets/assets.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String actorsName;
  final String postTime;
  final String postHeaderText;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  final String postBottomAvathar;
  PostCard(
      {required this.avatar,
      required this.actorsName,
      required this.postTime,
      required this.postHeaderText,
      required this.postImage,
      this.showBlueTick = false,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount,
      required this.postBottomAvathar,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          SizedBox(
            height: 5,
          ),
          imagePostSection(),
          postFooterSection(),
          Divider(
            thickness: 2,
          ),
          StatusIconButton(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonColor: Colors.grey,
                buttonAction: () {},
                buttonIcon: Icons.thumb_up_alt_outlined),
            buttonTwo: headerButton(
              buttonText: 'Comment',
              buttonColor: Colors.grey,
              buttonAction: () {},
              buttonIcon: Icons.message_outlined,
            ),
            buttonThree: headerButton(
              buttonText: 'Share',
              buttonColor: Colors.grey,
              buttonAction: () {},
              buttonIcon: Icons.share_outlined,
            ),
          )
        ],
      ),
    );
  }

  //creation bottompostfooter
  Widget postFooterSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 50,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(postText: likeCount),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 0),
            child: Row(
              children: [
                displayText(postText: commentCount),
                SizedBox(
                  width: 1,
                ),
                displayText(postText: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(postText: shareCount),
                SizedBox(
                  width: 1,
                ),
                displayText(postText: 'Shares'),
                SizedBox(
                  width: 5,
                ),
                Avathar(
                  avatharName: postBottomAvathar,
                  displayStatus: false,
                  width: 30,
                  height: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

//for the display text all
  Widget displayText({required postText}) {
    return Text(
      postText,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //creating image function
  Widget imagePostSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

//creating post title section
  Widget titleSection() {
    return Container(
      height: 20,
      child: Text(
        postHeaderText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }

// creating post card header
  Widget postCardHeader() {
    return ListTile(
      leading: Avathar(
        avatharName: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            actorsName,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            postTime,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_horiz),
      ),
    );
  }
}
