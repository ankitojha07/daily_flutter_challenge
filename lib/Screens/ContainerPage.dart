import 'package:flutter/material.dart';

class ContainerDashboard extends StatelessWidget {
  const ContainerDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 350.0,
        height: 250.0,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            // borderRadius: BorderRadius.circular(20.0),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/logo.png')),
              boxShadow: const [
                BoxShadow(
                  color: Colors.tealAccent,
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: Offset(4,4),
                )
              ]
              ),
        child: Text(
          'Boring',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
