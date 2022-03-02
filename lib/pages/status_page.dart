// ignore_for_file: avoid_unnecessary_containers, avoid_print, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/status_model.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/no_image.jpg'),
          ),
          title: const Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Tap to add status update',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
            ),
          ),
          onTap: () {
            // ignore: avoid_print
            print('My Own Status Detail Open');
          },
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recent Updates',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(statusData[index].avatarUrl),
                  ),
                  title: Text(
                    statusData[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    statusData[index].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  onTap: () {
                    print('Status Detail Open');
                  },
                ),
                const Divider(
                  height: 10.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
