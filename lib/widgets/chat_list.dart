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
      body: ListView.builder(
          itemCount: img.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: double.infinity,
              height: 65,
              // padding: EdgeInsets.all(8),
              child: ChatWidget(
                  img: img[index],
                  names: names[index],
                  text: text[index],
                  time: time[index]),
            );
            // Padding(
            // padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       CircleAvatar(
            //         radius: 20,
            //         backgroundImage: AssetImage(img[index]),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             names[index],
            //             style: TextStyle(
            //                 fontSize: 20, fontWeight: FontWeight.bold),
            //           ),
            //           Text(text[index]),
            //         ],
            //       ),
            //       Spacer(),
            //       Text(time[index])
            //     ],
            //   ),
            // );
          }),
    );
  }
}

class ChatWidget extends StatelessWidget {
  ChatWidget(
      {super.key,
      required this.img,
      required this.names,
      required this.text,
      required this.time});
  final String img;
  final String names;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(img),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                names,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(text),
            ],
          ),
          Spacer(),
          Text(time)
        ],
      ),
    ));
  }
}
