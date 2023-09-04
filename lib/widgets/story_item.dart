import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(children: [
        Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  ""),
            ),
            Padding(padding: EdgeInsets.only(top:2 ),child: Text('kullanıcı',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
          ],
        ),
      ]),
    );
  }
}
