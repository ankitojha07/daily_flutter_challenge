// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/AlignmentPage.dart';
import 'package:flutter_application_1/Screens/ContainerPage.dart';
import 'package:flutter_application_1/Screens/Dashboard.dart';
import 'package:flutter_application_1/Screens/Home.dart';
import 'package:flutter_application_1/Screens/Iconspage.dart';
import 'package:flutter_application_1/Screens/Imagepage.dart';
import 'package:flutter_application_1/ui/BizCard.dart';
import 'package:flutter_application_1/ui/ListBizz.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: BizzLiist(),
    );
  }
}
