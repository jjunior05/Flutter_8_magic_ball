import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Magic 8 ball'),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var magic = 1;
  void changeBall() {
    setState(() {
      magic = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeBall();
              },
              child: Image.asset("images/ball$magic.png"),
            ),
          ),
        ],
      ),
    );
  }
}
