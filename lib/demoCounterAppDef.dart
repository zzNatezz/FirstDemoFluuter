import 'package:flutter/material.dart';

class DemoCounterApp extends StatefulWidget {
  final Color colorButton;
  const DemoCounterApp({Key? key, this.colorButton = Colors.cyanAccent})
      : super(key: key);
  // can use key word require and remove const without final

  @override
  State<DemoCounterApp> createState() => _DemoCounterAppState();
}

class _DemoCounterAppState extends State<DemoCounterApp> {
  int counter = 0;

  void increasement() {
    if (mounted) {
      setState(() {
        counter = counter + 5;
        print(counter);
      });
    }
  }

  @override
  void initState() {
    //
    super.initState();
  }

  @override
  void dispose() {
    //
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: widget.colorButton,
          child: const Icon(Icons.add),
          onPressed: () {
            increasement();
          }),
      body:
          Center(child: Text('$counter', style: const TextStyle(fontSize: 30))),
    );
  }
}
