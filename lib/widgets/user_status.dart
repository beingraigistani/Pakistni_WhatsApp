import 'package:flutter/material.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 100,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text("This bloc of code shows user status"),
        ),
        CircleAvatar(
          child: Image(
            image: AssetImage("assets/images/dp9.jpg"),
            fit: BoxFit.fill,
          ),
          radius: 10,
        ),
      ]),
    );
  }
}
