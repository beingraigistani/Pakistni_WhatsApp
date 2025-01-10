import 'package:flutter/material.dart';
import 'package:myapp/widgets/chat_list.dart';

class ChatScreen extends StatelessWidget {
  final List<String> img = [
    'assets/images/dp1.jpg',
    'assets/images/dp2.jpg',
    'assets/images/dp5.jpg',
    'assets/images/dp8.jpg',
    'assets/images/dp3.jpg',
    'assets/images/dp6.jpg',
    'assets/images/dp9.jpg',
    'assets/images/dp4.jpg',
    'assets/images/dp7.jpg',
    'assets/images/dp4.jpg',
  ];
  final List<String> names = [
    'adnan',
    'Shahzad',
    'Zubair',
    'Zakir',
    'Zain',
    'Zaid',
    'Umair',
    'Mohtshim Raheel Shareef',
    'Haroon',
    'Danial',
  ];
  final List<String> text = [
    'hi',
    'kese ho',
    'kaha ho',
    'i am waiting',
    'chaye pene chlai',
    'Zaid',
    'krna kya hai',
    'yar tum kehna kya chahte ho',
    'kaam kr lo pehle apna ',
    'Danial hu mai',
  ];
  final List<String> time = [
    '2:22 pm',
    '1:50 pm',
    '12:32 pm',
    '6:11 am',
    '6:05 am',
    '5:40 am',
    '5:21 am',
    '4:15 am',
    'yesterday',
    'yesterday',
  ];

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
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView.builder(itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Drawer"),
            ),
          );
        }),
      ),
      body: Column(
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
                  fillColor: Colors.grey[300],
                  //  Color(0x80f6f5f3),
                  filled: true,
                  hintText: 'Ask Meta AI or Search'),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: img.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    height: 70,
                    // padding: EdgeInsets.all(8),
                    child: ChatWidget(
                        img: img[index],
                        names: names[index],
                        text: text[index],
                        time: time[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
