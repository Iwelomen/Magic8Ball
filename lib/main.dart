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

class Magic8Ball extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ask Me Anything'),
      ),
      body: Container(
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
}
