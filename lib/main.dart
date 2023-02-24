// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'My App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
