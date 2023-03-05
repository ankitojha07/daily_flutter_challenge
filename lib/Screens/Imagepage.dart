import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const url = 'https://images.indianexpress.com/2022/12/Shah-Rukh-Khan-Pathaan-Final-R-1.jpg';
    return Scaffold(
      appBar: AppBar(
        title: Text('image Section'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Image(
          // image: AssetImage("images/me.jpeg"),
          image:NetworkImage(url),
          width: 100.0,
          height: 100.0,
        ),
      ),
    );
  }
}
