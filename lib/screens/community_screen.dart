import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(height: 300,
        width: 300,
          decoration: BoxDecoration(color: Colors.blueAccent,
          // borderRadius: BorderRadius.all(Radius.circular(8)),
          shape: BoxShape.circle
          ),
          child: Center(
            child: Text("I don't like community tab so i didn't made it",
            
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 24),
            ),
          ),
          ),
      ),
    );
  }
}