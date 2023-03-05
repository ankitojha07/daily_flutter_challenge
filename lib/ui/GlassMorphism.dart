import 'package:flutter/material.dart';
import 'FrostedGlass.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/tree.jpg'),
            fit: BoxFit.cover,
          )
        ),
        alignment: Alignment.center,
        child: const FrostedGlassBox(
          theWidth: 250.0,
          theHeight: 250.0,
          theChild: Text('Hey there, beautiful people on twitter',textAlign: TextAlign.center, style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold , color: Colors.white),),
        ),
      ),
    );
  }
} 