import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  ChatList({super.key});
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
  List<String> names = [
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
  List<String> text = [
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
  List<String> time = [
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
      body:
          //  Text('Chatlist')
          ListView.builder(
              itemCount: img.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(img[index]),
                        // backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            names[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(text[index]),
                        ],
                      ),
                      Spacer(),
                      Text(time[index])
                    ],
                  ),
                );
              }),
    );
  }
}
