import 'package:facebook_app_clone/widget/create_rooms_widget.dart';
import 'package:facebook_app_clone/widget/posts_widget.dart';
import 'package:facebook_app_clone/widget/stories_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/create_post_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "facebook",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        centerTitle: false,
        actions: [
          RawMaterialButton(
            onPressed: () {},
            constraints: BoxConstraints.tight(Size(55, 55)),
            fillColor: Colors.grey[200],
            elevation: 0,
            shape: CircleBorder(),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          RawMaterialButton(
            onPressed: () {},
            constraints: BoxConstraints.tight(Size(55, 55)),
            fillColor: Colors.grey[200],
            elevation: 0,
            shape: CircleBorder(),
            child: Icon(
              FontAwesomeIcons.facebookMessenger,
              size: 28.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CreatePostWidget(),
          SizedBox(
            height: 10,
          ),
          CreateRoomsWidget(),
          SizedBox(
            height: 10,
          ),
          StoriesWidget(),
          SizedBox(
            height: 10,
          ),
          PostsWidget(),
          SizedBox(
            height: 10,
          ),
          PostsWidget()
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.house,
                  size: 25,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.ondemand_video,
                  size: 28,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.circleUser,
                  size: 28,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.users,
                  size: 28,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 28,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.bars,
                  size: 28,
                ),
                label: '')
          ]),
    );
  }
}
