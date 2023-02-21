// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BizzCard extends StatelessWidget {
  const BizzCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(padding: EdgeInsets.all(20.0),
          height: 200.0,
          width: 500.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello Bizz Caed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Text('Helo Bizz Caed'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ankit Ojha')
                ],
              )
            ],
          )),
      ),
    );
  }
}
