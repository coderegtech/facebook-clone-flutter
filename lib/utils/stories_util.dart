import 'package:flutter/material.dart';

class StoriesUtil extends StatelessWidget {
  const StoriesUtil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 150,
        height: double.infinity,
        padding: EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F2.bp.blogspot.com%2F_LDF9z4ZzZHo%2FTP__vW9O3mI%2FAAAAAAAAAEg%2FXNK0nLmM_Tk%2Fs1600%2F1600cat_5008.jpg&f=1&nofb=1&ipt=a23af820b146787778a5ebb0674aa1e53a501c25b64ac35e0f3402fc916544c2&ipo=images",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 15,
        left: 15,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage(
                'https://www.hdwallpapersfreedownload.com/uploads/large/animals/cat-photos.jpg'),
          ),
        ),
      ),
      Positioned(
        left: 15,
        bottom: 15,
        child: Text(
          "John Doe",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      )
    ]);
  }
}
