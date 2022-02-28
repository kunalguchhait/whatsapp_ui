import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/message_page.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({ Key? key }) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar:AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/no_image.jpg'),
              ),
              Padding(padding: EdgeInsets.only(left: 6.0),
              child: Text('Kunal'),
              )
          ],
        ),
        actions: [
        IconButton(
          onPressed: (){
        // ignore: avoid_print
        print('Video Call Button Clicked');
        },
        icon: const Icon(Icons.video_call),
        ),
         IconButton(
          onPressed: (){
        // ignore: avoid_print
        print('Call Button Clicked');
        },
        icon: const Icon(Icons.call),
        ),
         IconButton(
          onPressed: (){
        // ignore: avoid_print
        print('More Button Clicked');
        },
        icon: const Icon(Icons.more_vert),
        ),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Column(
        children:[const Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                 child: TextFormField(
                   minLines: 1,
                   maxLines: 5,
                   decoration: InputDecoration(
                     focusedBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(50),
                       borderSide: const BorderSide(color:Colors.grey,
                       width: 0.0), 
                     ),
                     enabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(50),
                       borderSide: const BorderSide(color:Colors.grey,
                       width: 0.0), 
                     ),
                     hintText: 'Type a message',
                   ),
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