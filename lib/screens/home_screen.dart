import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
            icon: const Icon(Icons.camera_front),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    fillColor: Color.fromARGB(240, 246, 245, 243),
                    filled: true,
                    hintText: 'Ask Meta AI or Search'),
              ),
            ),
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
