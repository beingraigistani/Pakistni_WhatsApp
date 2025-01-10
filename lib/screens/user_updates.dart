import 'package:flutter/material.dart';
import 'package:myapp/widgets/user_status.dart';

class UserUpdates extends StatelessWidget {
  const UserUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(height: 100,width: double.infinity,
                child: UserStatus()),
            ),
          ],
        ),
      ),
    );
  }
}
