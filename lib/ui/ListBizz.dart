
import 'package:flutter/material.dart';

class BizzLiist extends StatelessWidget {
  const BizzLiist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C','A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100,600, 500, 100];
    return Scaffold(
      body: ListView.separated(
        itemCount:15,
    itemBuilder: (BuildContext context, int index) {
      return Container(padding: EdgeInsets.all(20.0),
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
          ));
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}


// ListView(
//         padding: EdgeInsets.all(10),
//         children: [
          
//           Container(padding: EdgeInsets.all(20.0),
//           height: 200.0,
//           width: 500.0,
//           decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(20),
//           ),          
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Hello Bizz Caed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
//               Text('Helo Bizz Caed'),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Ankit Ojha')
//                 ],
//               )
//             ],
//           )),

//            Container(padding: EdgeInsets.all(20.0),
//           height: 200.0,
//           width: 500.0,
//           decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(20),
//           ),          
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Hello Bizz Caed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
//               Text('Helo Bizz Caed'),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Ankit Ojha')
//                 ],
//               )
//             ],
//           )),

//            Container(padding: EdgeInsets.all(20.0),
//           height: 200.0,
//           width: 500.0,
//           decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(20),
//           ),          
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Hello Bizz Caed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
//               Text('Helo Bizz Caed'),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Ankit Ojha')
//                 ],
//               )
//             ],
//           )),

//            Container(padding: EdgeInsets.all(20.0),
//           height: 200.0,
//           width: 500.0,
//           decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(20),
//           ),          
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Hello Bizz Caed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
//               Text('Helo Bizz Caed'),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Ankit Ojha')
//                 ],
//               )
//             ],
//           )),
//         ],
//       ),