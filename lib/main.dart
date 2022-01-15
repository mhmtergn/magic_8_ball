import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[800],
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int randomNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.teal[800]),
      onPressed: () {
        setState(() {
          randomNumber = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('assets/images/ball$randomNumber.png'),
    ));
  }
}
