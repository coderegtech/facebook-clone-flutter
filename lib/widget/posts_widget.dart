import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostsWidget extends StatefulWidget {
  const PostsWidget({Key? key}) : super(key: key);

  @override
  _PostsWidgetState createState() => _PostsWidgetState();
}

class _PostsWidgetState extends State<PostsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: max(300, 500),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Post Header
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://www.thefarmersdog.com/digest/wp-content/uploads/2020/05/Ears-pitbull-2-scaled.jpg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Doggy",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1d",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        )
                      ],
                    )
                  ],
                ),
                Icon(FontAwesomeIcons.ellipsis)
              ],
            ),
          ), // Post header
          // Post Caption
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "Meow Meow grrr grrrr...",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          // Post Image
          Expanded(
              child: Image.network(
            "https://www.thesprucepets.com/thmb/mOrW4eZ-TWdyKFnEEF9Uk8F_MEI=/2048x1356/filters:fill(auto,1)/12473529633_eca14113fe_k-5a932272303713003754f375.jpg",
            fit: BoxFit.cover,
          )), // Post image

          Container(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.thumbsUp,
                    color: Colors.black87,
                    size: 25,
                  ),
                  label: const Text(
                    'Like',
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.message,
                    color: Colors.black87,
                    size: 25,
                  ),
                  label: const Text(
                    'Comment',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.ios_share_outlined,
                    color: Colors.black87,
                    size: 30,
                  ),
                  label: const Text(
                    'Share',
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

// postController
class PostController extends StatefulWidget {
  const PostController({Key? key}) : super(key: key);

  @override
  _PostControllerState createState() => _PostControllerState();
}

class _PostControllerState extends State<PostController> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
