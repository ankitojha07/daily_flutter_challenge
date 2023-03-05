
import 'package:flutter/material.dart';

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
                children: const [
                  Text('Ankit Ojha')
                ],
              )
            ],
          )),
      ),
    );
  }
}
