import 'package:flutter/material.dart';

class GetChatBB extends StatelessWidget {
  final String message;
  final Alignment alignment;
  const GetChatBB({Key? key, required this.alignment, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
          color: Colors.lightGreen,
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(8),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              message,
              style: const TextStyle(fontSize: 21, color: Colors.white),
            ),
            Image.asset(
              'assets/personal.jpg',
              height: 100,
            )
          ])),
    );
  }
}
