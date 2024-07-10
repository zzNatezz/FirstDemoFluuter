import 'package:flutter/material.dart';

class Chatinput extends StatelessWidget {
  Chatinput({Key? key}) : super(key: key);

  final chatMessage = TextEditingController();

  void sendMessage() {
    print(chatMessage.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                )),
            Expanded(
                child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              minLines: 1,
              controller: chatMessage,
              textCapitalization: TextCapitalization.sentences,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  hintText: 'Wanna say something !!!',
                  hintStyle: TextStyle(color: Colors.black)),
            )),
            IconButton(
                onPressed: () {
                  sendMessage();
                },
                icon: const Icon(Icons.send, color: Colors.white)),
          ],
        ),
        height: 80,
        decoration: const BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))));
  }
}
