import 'package:flutter/material.dart';

class Chatinput extends StatelessWidget {
  const Chatinput({Key? key}) : super(key: key);

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
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send, color: Colors.white)),
          ],
        ),
        height: 80,
        decoration: const BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))));
  }
}
