// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/auth/LoginPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions:<Widget> [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.pink.shade500,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        // flexibleSpace: Image(
        //   image: NetworkImage('https://pbs.twimg.com/media/FN3gTJ5akAMW-UX?format=jpg&name=900x900'),
        //   fit: BoxFit.cover,
        // ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
              color: Colors.pink.shade500,
    ),
              accountName: Text('Ankit Ojha'), 
              accountEmail: Text('ankitojha@gmail.com'),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('images/logo.png'),),
              
              ),
              ListTile(leading: Icon(Icons.home), title: Text('Home'),),
              ListTile(leading: Icon(Icons.search), title: Text('Search'),),
              ListTile(leading: Icon(Icons.shopping_bag), title: Text('Shopping'),),
              ListTile(leading: Icon(Icons.logo_dev), title: Text('Developer Mode'),),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Labels', style: TextStyle(fontWeight: FontWeight.bold),),
              ),

              ListTile(leading: Icon(Icons.home), title: Text('Home'),),
              ListTile(leading: Icon(Icons.search), title: Text('Search'),),
              ListTile(leading: Icon(Icons.shopping_bag), title: Text('Shopping'),),
              ListTile(leading: Icon(Icons.logo_dev), title: Text('Developer Mode'),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call_missed),
        onPressed: (){
           Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const LoginPage()));
                          
        },
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: 'balance'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      ],
      onTap: (int i){
        debugPrint('Clicked on ${i+1}');
      },),
      backgroundColor: Colors.white,
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
          onPressed: (){
            final snackBar = SnackBar(content: Text('Started...'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: (){},
            ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
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