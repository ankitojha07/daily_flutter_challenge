
import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App bar'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text.rich(
            TextSpan(
              text: 'My',
              children: [
                TextSpan(
                    text: 'Flutter',
                    style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'App',
                    style: TextStyle(fontSize: 30.0, color: Colors.lightBlue)),
                TextSpan(
                  text: '\nThe random value is ${getNumber()}'
                )
              ],
            ),
        ),
      ),
    );
  }
}

int getNumber(){ return Random().nextInt(100); }
