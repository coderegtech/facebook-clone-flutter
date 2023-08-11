import 'dart:ui';

import 'package:facebook_app_clone/utils/stories_util.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white),
      child: Expanded(
          child: ListView(scrollDirection: Axis.horizontal, children: [
        Stack(children: [
          Container(
            width: 150,
            height: double.infinity,
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F9%2F9b%2FPhoto_of_a_kitten.jpg&f=1&nofb=1&ipt=5ca0417059551a957ac39fcdb4055c1a2d9043af79abdec1d91951d235f7b219&ipo=images",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: RawMaterialButton(
              onPressed: () {},
              constraints: BoxConstraints.tight(Size(40, 40)),
              fillColor: Colors.grey[200],
              elevation: 0,
              shape: CircleBorder(),
              child: Icon(
                Icons.add,
                size: 28.0,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 15,
            child: Text(
              "Add to Story",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ]),
        StoriesUtil(),
        StoriesUtil(),
        StoriesUtil(),
        StoriesUtil(),
      ])),
    );
  }
}
