import 'package:chat_app/widgets/chatInput.dart';
import 'package:chat_app/widgets/getChatBB.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Chat appppppp'),
        actions: [
          IconButton(
            onPressed: () {
              print('function is being processed');
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
                      message: "Hello",
                    );
                  })),
          const Chatinput()
        ],
      ),
    );
  }
}
