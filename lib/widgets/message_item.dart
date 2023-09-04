import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "")),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Eyüp Can Erkal'),
                  Padding(
                      padding: EdgeInsets.only(top: 3, left: 2),
                      child: Text('Merhaba'))
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5), child: Text('15.45')),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 12),
                  ),
                  radius: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
