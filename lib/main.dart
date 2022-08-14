import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic_8_ball());
}

class Magic_8_ball extends StatefulWidget {
  const Magic_8_ball({Key? key}) : super(key: key);

  @override
  State<Magic_8_ball> createState() => _Magic_8_ballState();
}

class _Magic_8_ballState extends State<Magic_8_ball> {
  int ballNumber = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(
            child: Text('Ask anything from me!'),
          ),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
