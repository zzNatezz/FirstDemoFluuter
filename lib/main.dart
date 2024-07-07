import 'package:chat_app/chat_page.dart';
import 'package:chat_app/demoCounterAppDef.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(chatApp());
}

class chatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO : implement build
    return MaterialApp(
        title: "Demo chat app on flutter",
        theme: ThemeData(primaryColor: Colors.blue),
        // home: loginPage()
        // home: ChatPage());
        home: DemoCounterApp());
  }
}
