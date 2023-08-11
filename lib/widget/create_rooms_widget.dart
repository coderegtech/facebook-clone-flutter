import '../utils/rooms_util.dart';
import 'package:flutter/material.dart';

class CreateRoomsWidget extends StatelessWidget {
  const CreateRoomsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(children: [
        Container(
          width: 130,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 3, color: Colors.blue)),
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              size: 30,
            ),
            label: Text(
              "Create Room",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: ((context, index) {
                return const RoomsUtil();
              })),
        )
      ]),
    );
  }
}
