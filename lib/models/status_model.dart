List<StatusModel> statusData = [
  StatusModel(
      name: 'Kunal Guchhait', time: '17:30', avatarUrl: 'assets/images/2.jpg'),
  StatusModel(
      name: "Samar Guchhait", time: "5:00", avatarUrl: "assets/images/6.jpg"),
  StatusModel(
      name: "BaidyaNath Bangal",
      time: "10:30",
      avatarUrl: "assets/images/1.jpg"),
  StatusModel(
      name: "Debasis Guchhait",
      time: "12:30",
      avatarUrl: "assets/images/7.jpg"),
  StatusModel(
      name: "অর্পণ কর (অপু)", time: "15:30", avatarUrl: "assets/images/4.jpg"),
  StatusModel(
      name: "Sourav Das", time: "15:30", avatarUrl: "assets/images/3.jpg"),
];

class StatusModel {
  String name;
  String time;
  String avatarUrl;

  StatusModel({
    required this.name,
    required this.time,
    required this.avatarUrl,
  });
}
