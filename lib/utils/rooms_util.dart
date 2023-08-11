import 'package:flutter/material.dart';

class RoomsUtil extends StatefulWidget {
  const RoomsUtil({Key? key}) : super(key: key);

  @override
  _RoomsUtilState createState() => _RoomsUtilState();
}

class _RoomsUtilState extends State<RoomsUtil> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        const CircleAvatar(
          radius: 25,
          backgroundColor: Colors.red,
          backgroundImage: NetworkImage(
              'https://www.thefarmersdog.com/digest/wp-content/uploads/2020/05/Ears-pitbull-2-scaled.jpg'),
        ),
        Positioned(
          bottom: 3,
          right: -3,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.white)),
          ),
        )
      ]),
    );
  }
}
