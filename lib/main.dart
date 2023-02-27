// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home.dart';
import 'package:flutter_application_1/auth/LoginPage.dart';
import 'package:flutter_application_1/auth/SignUp.dart';
import 'package:flutter_application_1/ui/TipCalculator.dart';

import 'Screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
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
      home: TipCal(),
      routes:{
        '/signup' : (context)=> SignUp(),
        '/Login' : (context)=> LoginPage(),
        '/home' : (context)=> HomePage(),
      },
    );
  }
}
