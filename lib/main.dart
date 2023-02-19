// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Dashboard.dart';
import 'package:flutter_application_1/Screens/Iconspage.dart';
import 'package:flutter_application_1/Screens/Imagepage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Iconpage(),
    );
  }
}
