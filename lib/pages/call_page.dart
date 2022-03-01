import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/call_model.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView.builder(
        // ignore: unnecessary_null_comparison
        itemCount: callData.length,
        itemBuilder: (context, index) => Column(
          children: [
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(callData[index].avatarUrl),
              ),
              title: Text(
                callData[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                    child: callData[index].callType,
                  ),
                  Text(
                    callData[index].time,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                size: 25,
                color: Color(0xff075e54),
              ),
              onTap: () {
                // print('call detail open');
              },
            )
          ],
        ),
      ),
    );
  }
}
