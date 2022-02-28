import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';


class MessagePage extends StatefulWidget {
  const MessagePage({ Key? key }) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Bubble(
              alignment: Alignment.center,
              color: const Color.fromRGBO(212, 234, 244, 1),
              child: const Text('TODAY',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11)),
        ),
      ],
    );
  }
}