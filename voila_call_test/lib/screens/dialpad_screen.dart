import 'package:flutter/material.dart';

class DialpadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialpad'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Your dialpad UI components will go here
              Text('Dialpad'),
            ],
          ),
        ),
      ),
    );
  }
}
