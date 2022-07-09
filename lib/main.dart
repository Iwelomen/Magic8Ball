import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Magic8Ball(
      ),
    )
  );
}

class Magic8Ball extends StatefulWidget {


  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballState = 1;

  void changeBall() {
    setState(() {
      ballState = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlue,

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: SizedBox(
          child: OutlinedButton(
            onPressed: () {
              changeBall();
            },
              child: Image.asset('images/ball$ballState.png')),

        ),
      ),
    );
  }
}
