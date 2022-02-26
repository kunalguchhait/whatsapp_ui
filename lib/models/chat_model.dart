List<ItemLists> itemsList = [
    ItemLists(
      name: 'Kunal Guchhait',
      message: 'Hey I have hacked whatsapp!',
      time: '17:30',
      avatarUrl: 'assets/images/2.jpg'),
    ItemLists(
       name: "Samar Guchhait",
      message: "Wassup !",
      time: "5:00",
      avatarUrl:
          "assets/images/6.jpg"),
    ItemLists(
       name: "BaidyaNath Bangal",
      message: "I'm good!",
      time: "10:30",
      avatarUrl:
          "assets/images/1.jpg"),
    ItemLists(
      name: "Debasis Guchhait",
      message: "আমি আমার মতো",
      time: "12:30",
      avatarUrl:
          "assets/images/7.jpg"),
    ItemLists(
       name: "অর্পণ কর (অপু)",
      message: "একলা_মন",
      time: "15:30",
      avatarUrl:
          "assets/images/4.jpg"),
    ItemLists(
       name: "Sourav Das",
      message: "মীন জাতকের সম্রাট",
      time: "15:30",
      avatarUrl:
          "assets/images/3.jpg"),      
   ];

class ItemLists {
  String name;
  String message;
  String time;
  String avatarUrl;
  
  ItemLists({required this.name, required this.message, required this.time, required this.avatarUrl});
}
