import 'package:flutter/material.dart';
import 'package:instagram/widgets/message_item.dart';

class MessengerView extends StatelessWidget {
  const MessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return MessageItem();
              },
            )),
      ),
    );
  }
}
