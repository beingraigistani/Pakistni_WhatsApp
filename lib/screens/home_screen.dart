import 'package:flutter/material.dart';
import 'package:myapp/screens/calll_screen.dart';
import 'package:myapp/screens/chat_screen.dart';
import 'package:myapp/screens/community_screen.dart';
import 'package:myapp/screens/user_updates.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myindex = 0;

  List<Widget> AllScreens = [
    ChatScreen(),
    UserUpdates(),
    CommunityScreen(),
    CalllScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AllScreens[myindex],
      //  ChatScreen(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          myindex = index;
        }),
        currentIndex: myindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_add_rounded), label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
