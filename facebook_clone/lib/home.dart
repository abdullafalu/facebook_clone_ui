import 'package:facebook_clone/section/bottomIconButton.dart';
import 'package:facebook_clone/section/statusIconButton.dart';
import 'package:facebook_clone/section/statusSection.dart';
import 'package:facebook_clone/section/storySection.dart';
import 'package:facebook_clone/widgets/assets.dart';
import 'package:facebook_clone/widgets/iconButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:facebook_clone/widgets/roomSection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 22, 139, 235),
              fontSize: 25,
            ),
          ),
          actions: [
            AppBarIcons(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('clicked');
              },
            ),
            AppBarIcons(
              buttonIcon: Icons.message,
              buttonAction: () {
                print('clicked');
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 233, 227, 227),
            ),
            StatusIconButton(
              buttonOne: headerButton(
                  buttonText: 'Go Live',
                  buttonColor: Colors.red,
                  buttonAction: () {},
                  buttonIcon: Icons.video_call),
              buttonTwo: headerButton(
                  buttonText: "photo",
                  buttonColor: Colors.pink,
                  buttonAction: () {},
                  buttonIcon: Icons.photo),
              buttonThree: headerButton(
                  buttonText: 'Room',
                  buttonColor: Colors.blue,
                  buttonAction: () {},
                  buttonIcon: Icons.video_call),
            ),
            Divider(
              thickness: 10,
            ),
            RoomSection(),
            Divider(
              thickness: 10,
            ),
            StorySection(),
            Divider(
              thickness: 10,
            ),
            SizedBox(
              height: 5,
            ),
            PostCard(
              actorsName: "Mohanlal",
              avatar: mohanlaal,
              postTime: '5hr',
              postHeaderText: 'Happy New Year',
              postImage: mohanlaalpost,
              showBlueTick: true,
              commentCount: '211',
              likeCount: '1.3k',
              shareCount: '21',
              postBottomAvathar: mohanlaal,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              avatar: tovino,
              actorsName: 'Tovino',
              postTime: '2m',
              postHeaderText: 'You guys should be there!!',
              postImage: tovinomain,
              likeCount: '25k',
              commentCount: '2k',
              shareCount: '546',
              showBlueTick: true,
              postBottomAvathar: tovino,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
                showBlueTick: true,
                avatar: mohanlaal,
                actorsName: 'Mohanlal',
                postTime: '3hr',
                postHeaderText: '26 Dec,All kerala publication.....',
                postImage: mohanmain,
                likeCount: '13k',
                commentCount: '6k',
                shareCount: '1.6k',
                postBottomAvathar: mohanlaal,
                ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              showBlueTick: true,
              avatar: dq,
              actorsName: 'Dulkar salmaan',
              postTime: '25m',
              postHeaderText: 'Hridhayam',
              postImage: dqmain,
              likeCount: '126k',
              commentCount: '25k',
              shareCount: '12k',
              postBottomAvathar: dq,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              showBlueTick: true,
              avatar: prithvi,
              actorsName: 'Prithviraj Sukumaaran',
              postTime: '58m',
              postHeaderText: 'The big brother is coming out',
              postImage: prithvimain,
              likeCount: '19k',
              commentCount: '2.8k',
              shareCount: '1.1k',
              postBottomAvathar: prithvi,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              showBlueTick: true,
              avatar: unnimukundhan,
              actorsName: 'Unnimukhundhan',
              postTime: '1min',
              postHeaderText: 'Please like my profile picture',
              postImage: unnimain,
              likeCount: '84k',
              commentCount: '870',
              shareCount: '126',
              postBottomAvathar: unnimukundhan,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              showBlueTick: true,
              avatar: dileep,
              actorsName: 'Actor Dileep',
              postTime: '36m',
              postHeaderText: 'The beast coming out',
              postImage: jojumain,
              likeCount: '123k',
              commentCount: '26k',
              shareCount: '2.6k',
              postBottomAvathar: dileep,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              avatar: jasim,
              actorsName: 'Jasim AP',
              postTime: '3m',
              postHeaderText: 'Please like my profile picture',
              postImage: jasim,
              likeCount: '485k',
              commentCount: '186k',
              shareCount: '83k',
              showBlueTick: true,
              postBottomAvathar: jasim,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              avatar: jasim,
              actorsName: 'Jasim AP',
              postTime: '8h',
              postHeaderText: 'Please Comment ',
              postImage: jasim2,
              likeCount: '923k',
              commentCount: '485k',
              shareCount: '212k',
              showBlueTick: true,
              postBottomAvathar: jasim2,
            ),
            Divider(
              thickness: 10,
            ),
            PostCard(
              avatar:fazidp,
               actorsName: "Fazi Moh'd",
                postTime: 'Dec 2006',
                 postHeaderText:'selfi with me and suhail😜😜😜😜😛😛😛😍😍',
                  postImage: fazipost,
                   likeCount: '97k',
                    commentCount: '1.2k',
                     shareCount: '789',
                      postBottomAvathar: fazidp,
                      showBlueTick: true,
                      ),
          ],
        ),
      ),
    );
  }
  
}
