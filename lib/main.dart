import 'package:chat_app/chat_page.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO : implement build
    return MaterialApp(
      title: "Demo chat app on flutter",
      theme: ThemeData(primaryColor: Colors.blue),
      home: loginPage(),
      routes: {'/chat': (context) => const ChatPage()},
    );
  }
}
