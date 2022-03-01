// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<CallModel> callData = [
  CallModel(
      name: 'Kunal Guchhait',
      time: '17:30',
      callType: CallModel.CallReceived,
      avatarUrl: 'assets/images/2.jpg'),
  CallModel(
      name: "Samar Guchhait",
      time: "5:00",
      callType: CallModel.callMissed,
      avatarUrl: "assets/images/6.jpg"),
  CallModel(
      name: "BaidyaNath Bangal",
      time: "10:30",
      callType: CallModel.CallReceived,
      avatarUrl: "assets/images/1.jpg"),
  CallModel(
      name: "Debasis Guchhait",
      time: "12:30",
      callType: CallModel.callMissed,
      avatarUrl: "assets/images/7.jpg"),
  CallModel(
      callType: CallModel.CallReceived,
      name: "অর্পণ কর (অপু)",
      time: "15:30",
      avatarUrl: "assets/images/4.jpg"),
  CallModel(
      callType: CallModel.callMissed,
      name: "Sourav Das",
      time: "15:30",
      avatarUrl: "assets/images/3.jpg"),
];

class CallModel {
  String name;
  String time;
  String avatarUrl;
  Icon callType;

  CallModel(
      {required this.name,
      required this.time,
      required this.avatarUrl,
      required this.callType});

  // ignore: non_constant_identifier_names
  static Icon CallReceived = const Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = const Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}
