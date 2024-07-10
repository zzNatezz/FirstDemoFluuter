import 'package:chat_app/widgets/chatInput.dart';
import 'package:chat_app/widgets/getChatBB.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  void backToLogin(context) {
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    final userName = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text('Hi $userName')),
        actions: [
          IconButton(
            onPressed: () {
              backToLogin(context);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GetChatBB(
                      alignment: index % 2 == 0
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      message: "Finished Navigate!",
                    );
                  })),
          Chatinput()
        ],
      ),
    );
  }
}
