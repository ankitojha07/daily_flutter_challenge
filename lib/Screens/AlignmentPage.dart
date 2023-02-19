// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              children: [
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
                    children: [
                      Icon(Icons.home, size: 30.0,),
                      Text('Home'),
                    ]),
                  Column(
                    children: [
                      Icon(Icons.search ,size: 30.0,),
                      Text('Home'),
                    ]),
                  Column(
                    children: [
                      Icon(Icons.shopping_bag, size: 30.0,),
                      Text('Home'),
                    ]),
                  Column(
                    children: [
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