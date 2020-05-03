import 'package:flutter/material.dart';
import 'package:quarantine_buddy/interface_screen.dart';
import 'loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InterfaceScreen(),
      );
  }
}
