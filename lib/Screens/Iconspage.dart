import 'package:flutter/material.dart';

class Iconpage extends StatelessWidget {
  const Iconpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
          child: IconButton(
            icon: Icon(
                  Icons.alt_route_rounded,
                ),
                onPressed: (){},
                iconSize: 100,
                color: Colors.lightGreenAccent,
                splashColor: Colors.white,
                highlightColor: Colors.red,
          )),
    );
  }
}
