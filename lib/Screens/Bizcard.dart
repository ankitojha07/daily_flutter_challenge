// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Bizcard extends StatelessWidget {
  const Bizcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Icon(Icons.access_alarms_outlined),
        Icon(Icons.access_alarms_outlined),
        Icon(Icons.access_alarms_outlined),
      ]),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.search),
                    Text('Search')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.search),
                    Text('Search')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.search),
                    Text('Search')
                  ],
                ),
              ],
            )
          ],
        ), 
      ),
    );
  }
}