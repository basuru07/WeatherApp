import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Image with adjusted size
          Positioned.fill(
            child: Image.asset(
              'assets/cover.png',
              width: 10,  // Set the desired width
              height: 10, // Set the desired height
            ),
          ),
          // Content
        ],
      ),
    );
  }
}
