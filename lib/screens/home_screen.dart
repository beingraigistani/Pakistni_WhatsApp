import 'package:flutter/material.dart';
import 'package:myapp/widgets/chat_list.dart';

class MyHomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  MyHomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pakistani WhatsApp',
          style: TextStyle(color: Colors.green, fontSize: 15),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_rounded),
          ),
          IconButton(
            onPressed: 
              toggleTheme
            ,
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    fillColor: Color(0x80f6f5f3),
                    filled: true,
                    hintText: 'Ask Meta AI or Search'),
              ),
            ),
            SizedBox(width: double.infinity, height: 500, child: ChatList()),
            // Text('Text after ChatList'),
            // Text('Text after ChatList'),
            // Text('Text after ChatList'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Icon(Icons.chat)),
                Text('Chats')
              ],
            ),
            Spacer(),
            Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Icon(Icons.update)),
                Text('Updates')
              ],
            ),
            Spacer(),
            Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Icon(Icons.group)),
                Text('Communities')
              ],
            ),
            Spacer(),
            Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Icon(Icons.call)),
                Text('Calls')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
