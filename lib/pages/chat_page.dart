import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}
 var data = itemsList;

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers, prefer_typing_uninitialized_variables
    return ListView.builder(
      // ignore: unnecessary_null_comparison
      itemCount:data.length,
      itemBuilder: (context,index)=> Column(
        children:[
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading:CircleAvatar(
             backgroundImage:AssetImage(data[index].avatarUrl),
            ),
            title:Text(data[index].name,
            style:const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:Text(data[index].message,
            style:const TextStyle(color: Colors.grey,fontSize: 15.0),
            ),
            trailing:Text(data[index].time,
            style:const TextStyle(color: Colors.grey,fontSize: 14.0),
            ),
          )
        ],
      )
      );
  }
}