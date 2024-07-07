import 'package:flutter/material.dart';

class DemoCounterApp extends StatefulWidget {
  const DemoCounterApp({Key? key}) : super(key: key);

  @override
  State<DemoCounterApp> createState() => _DemoCounterAppState();
}

class _DemoCounterAppState extends State<DemoCounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter = counter + 5;
              print(counter);
            });
            ;
          }),
      body:
          Center(child: Text('$counter', style: const TextStyle(fontSize: 30))),
    );
  }
}
