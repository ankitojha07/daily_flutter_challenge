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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        flexibleSpace: Image(
          image: NetworkImage('https://pbs.twimg.com/media/FN3gTJ5akAMW-UX?format=jpg&name=900x900'),
          fit: BoxFit.cover,
        ),
      ),
      body:Center(
        child: ElevatedButton(
          child:Text('Lets Begin', style: TextStyle(color: Colors.black),),
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            elevation: 12,
            primary: Colors.orange,
            onPrimary: Colors.deepOrangeAccent,
            side: BorderSide(
              color: Colors.black, width: 1.0,
            ),
            shape: StadiumBorder()
          ),
      )
      )
    );
  }
}