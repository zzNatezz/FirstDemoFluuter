import 'dart:io';

import 'package:flutter/material.dart';

//
class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton:
            FloatingActionButton(onPressed: () => print('hahahah')),
        body: Column(children: [
          const Text(
            'Let\'s sign you in app',
            style: TextStyle(
                fontSize: 30,
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          const Text(
            'Welcome back! \n You\'ve been missed !!!',
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 54, 244, 82),
                fontWeight: FontWeight.w900),
          ),
          // const Image(image: AssetImage('assets/6310507.jpg')),
          Container(
            width: 300,
            height: 300,
            // child: Image.network(
            //   'https://img.freepik.com/free-vector/privacy-policy-concept-illustration_114360-7853.jpg?t=st=1720015702~exp=1720019302~hmac=d4773bb52a8e7387131337221d98d9eb7131ce2a2b55af0446abf6f0a4218712&w=826',
            // ),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/privacy-policy-concept-illustration_114360-7853.jpg?t=st=1720015702~exp=1720019302~hmac=d4773bb52a8e7387131337221d98d9eb7131ce2a2b55af0446abf6f0a4218712&w=826'),
                  filterQuality: FilterQuality.high,
                )),
          )
        ]));
  }
}
