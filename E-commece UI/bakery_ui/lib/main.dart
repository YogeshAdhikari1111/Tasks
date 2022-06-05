import 'package:bakery_ui/electronic_UI.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElectronicApp(),
    );
  }
}

void main() {
  runApp(const ChatApp());
}
