// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
        title: Text('Home Page'),
        actions:<Widget> [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        // flexibleSpace: Image(
        //   image: NetworkImage('https://pbs.twimg.com/media/FN3gTJ5akAMW-UX?format=jpg&name=900x900'),
        //   fit: BoxFit.cover,
        // ),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text('Click me!', style: TextStyle(fontSize: 50.0),),
              onTap: () =>{debugPrint('Tapped....')},
            ),
          ElevatedButton(
          child:Text('Lets Begin', style: TextStyle(color: Colors.black),),
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            elevation: 12,
            primary: Colors.red,
            onPrimary: Colors.deepOrangeAccent,
            side: BorderSide(
              color: Colors.black, width: 1.0,
            ),
            shape: StadiumBorder()
          ),
      )
        ]),
      )
    );
  }
}