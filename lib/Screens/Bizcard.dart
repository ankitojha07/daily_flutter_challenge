
import 'package:flutter/material.dart';

class Bizcard extends StatelessWidget {
  const Bizcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [
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
                  children: const [
                    Icon(Icons.search),
                    Text('Search')
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.search),
                    Text('Search')
                  ],
                ),
                Column(
                  children: const [
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