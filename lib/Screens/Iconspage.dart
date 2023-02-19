import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Iconpage extends StatelessWidget {
  const Iconpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        // this is font awesome icons --------------------------
        child : IconButton(
            icon: Icon(FontAwesomeIcons.arrowPointer),
            onPressed: (){},
                iconSize: 100,
                color: Colors.lightGreenAccent,
                splashColor: Colors.white,
                highlightColor: Colors.red,
          )
      )

// this is material icon -------------------------
          // child: IconButton(
          //   icon: Icon(
          //         Icons.alt_route_rounded,
          //       ),
          //       onPressed: (){},
          //       iconSize: 100,
          //       color: Colors.lightGreenAccent,
          //       splashColor: Colors.white,
          //       highlightColor: Colors.red,
          // )),
          
    );
  }
}
