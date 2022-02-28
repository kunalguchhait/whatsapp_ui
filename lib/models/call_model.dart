List<CallModel> callData = [
  CallModel(
      name: 'Kunal Guchhait', time: '17:30', avatarUrl: 'assets/images/2.jpg'),
  CallModel(
      name: "Samar Guchhait", time: "5:00", avatarUrl: "assets/images/6.jpg"),
  CallModel(
      name: "BaidyaNath Bangal",
      time: "10:30",
      avatarUrl: "assets/images/1.jpg"),
  CallModel(
      name: "Debasis Guchhait",
      time: "12:30",
      avatarUrl: "assets/images/7.jpg"),
  CallModel(
      name: "অর্পণ কর (অপু)", time: "15:30", avatarUrl: "assets/images/4.jpg"),
  CallModel(
      name: "Sourav Das", time: "15:30", avatarUrl: "assets/images/3.jpg"),
];

class CallModel {
  String name;
  String time;
  String avatarUrl;

  CallModel({required this.name, required this.time, required this.avatarUrl});
}
