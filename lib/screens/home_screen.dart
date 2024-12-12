import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pakistani WhatsApp',
          style: TextStyle(color: Colors.green,fontSize: 15),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_front),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),)
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.chat)),
            ElevatedButton(onPressed: (){}, child: const Icon(Icons.call),)

          ],
        ),
      ),
    );
  }
}
