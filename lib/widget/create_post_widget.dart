import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreatePostWidget extends StatefulWidget {
  const CreatePostWidget({Key? key}) : super(key: key);

  @override
  _CreatePostWidgetState createState() => _CreatePostWidgetState();
}

class _CreatePostWidgetState extends State<CreatePostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://www.thefarmersdog.com/digest/wp-content/uploads/2020/05/Ears-pitbull-2-scaled.jpg'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(fontSize: 20)),
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            height: 15,
            color: Colors.black38,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                    size: 30,
                  ),
                  label: const Text(
                    'Live',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                const VerticalDivider(
                  width: 15.0,
                  color: Colors.black38,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                    size: 30,
                  ),
                  label: const Text(
                    'Live',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                const VerticalDivider(
                  width: 15.0,
                  color: Colors.black38,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purple,
                    size: 30,
                  ),
                  label: const Text(
                    'Live',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
