import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/hexcolor.dart';

class TipCal extends StatefulWidget {
  const TipCal({Key? key}) : super(key: key);

  @override
  State<TipCal> createState() => _TipCalState();
}

class _TipCalState extends State<TipCal> {

  final int _tipPercent = 0;
  final int _personCounter = 1;
  double _billAmount = 0.0;

  final Color _purple = HexColor('#6908D6');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: _purple.withOpacity(0.1),// Colors.purple.shade200,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Total per person'),
                  Text('\$123',style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.blue.shade100,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.circular(12.0)
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      prefixText: 'Bill Amount',
                      prefixIcon: Icon(Icons.attach_money)
                    ),
                    onChanged: (String value){
                      try{
                        _billAmount = double.parse(value);
                      }
                      catch(e){
                        _billAmount = 0.0;
                      }
                      }
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
