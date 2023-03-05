
import 'package:flutter/material.dart';

class AlignmentPage extends StatelessWidget {
  const AlignmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: Image(image: AssetImage('images/me.jpeg'))),
                Expanded(flex:2,child: Image(image: AssetImage('images/me.jpeg'))),
                Expanded(child: Image(image: AssetImage('images/me.jpeg'))),
              ],
            ),
            Container(
              margin: EdgeInsets.all(50.0),
              
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.home, size: 30.0,),
                      Text('Home'),
                    ]),
                  Column(
                    children: const [
                      Icon(Icons.search ,size: 30.0,),
                      Text('Home'),
                    ]),
                  Column(
                    children: const [
                      Icon(Icons.shopping_bag, size: 30.0,),
                      Text('Home'),
                    ]),
                  Column(
                    children: const [
                      Icon(Icons.settings, size: 30.0,),
                      Text('Home'),
                    ]),
                    
                ],
                ),
            ),
          ],
        ),
      ),
      )
    );
  }
}