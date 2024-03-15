import 'package:flutter/material.dart';
import 'package:voila_call_test/screens/dialpad_screen.dart';
import 'package:voila_call_test/screens/call_details_screen.dart';

void main() {
  runApp(VoilaCallApp());
}

class VoilaCallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voila Call',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => DialpadScreen(),
        '/call_details': (context) => CallDetailsScreen(),
      },
    );
  }
}
