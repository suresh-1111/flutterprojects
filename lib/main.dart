import 'package:flutter/material.dart';
import 'screens/voila_call_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voila Call App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VoilaCallScreen(),
    );
  }
}