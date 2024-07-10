import 'dart:io';
import 'package:flutter/material.dart';

//
class loginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final userNameController = TextEditingController();
  final passController = TextEditingController();

  loginPage({Key? key}) : super(key: key);

  void loginHandle(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print(userNameController.text);
      print(passController.text);
      print('Login succesfull');

      //navigate
      Navigator.pushReplacementNamed(context, '/chat',
          arguments: (userNameController.text));
    } else {
      print('login is not succesfull');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/free-vector/privacy-policy-concept-illustration_114360-7853.jpg?t=st=1720015702~exp=1720019302~hmac=d4773bb52a8e7387131337221d98d9eb7131ce2a2b55af0446abf6f0a4218712&w=826'),
                        filterQuality: FilterQuality.high,
                      )),
                ),

                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value != null &&
                                value.isNotEmpty &&
                                value.length < 5) {
                              return 'User name should more than 5 letters';
                            } else if (value == null || value.isEmpty) {
                              return "User name can't be empty";
                            }
                            return null;
                          },
                          controller: userNameController,
                          decoration: const InputDecoration(
                              hintText: 'Email or user name !!!',
                              hintStyle: TextStyle(color: Colors.blueGrey),
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: 'password',
                              hintStyle: TextStyle(color: Colors.blueGrey),
                              border: OutlineInputBorder()),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      loginHandle(context);
                    },
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    )),

                // Gesture Detector same as Inkwell withou color and animation
                InkWell(
                  splashColor: Colors.yellow,
                  onDoubleTap: () {
                    print('Doube tap actions');
                  },
                  onLongPress: () => {print('LongPress actions')},
                  onTap: () => {print('1 Tap actions')},
                  child: const Column(children: [
                    Text(
                      'Dart on Flutter framework',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('dart.docs')
                  ]),
                ),
              ]),
        ));
  }
}
