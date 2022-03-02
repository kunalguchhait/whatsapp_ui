// ignore_for_file: avoid_print, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/call_page.dart';
import 'package:whatsapp_ui/pages/chat_page.dart';
import 'package:whatsapp_ui/pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS'),
  ];

  get onPressed => null;

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              // ignore: avoid_print
              print('Search Button Clicked');
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // ignore: avoid_print
              print('Three Dot Button Clicked');
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('Camera'),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          // ignore: deprecated_member_use
          backgroundColor: Theme.of(context).accentColor,
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('Open Chat'));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          // ignore: deprecated_member_use
          backgroundColor: Theme.of(context).accentColor,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () => print('Open Camera'));
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          // ignore: deprecated_member_use
          backgroundColor: Theme.of(context).accentColor,
          child: const Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: () => print('Open Call'));
    } else {
      return null;
    }
  }
}
