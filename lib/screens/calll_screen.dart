import 'package:flutter/material.dart';

class CalllScreen extends StatelessWidget {
  CalllScreen({super.key});
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
        title: Text('Call'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: ListView.builder(
        itemCount: img.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(img[index]),
            ),
            title: Text(names[index]),
            subtitle: Text(time[index]),
            trailing: Icon(Icons.call),
          );
        },
      ),
    );
  }
}
