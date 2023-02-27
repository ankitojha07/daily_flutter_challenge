import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/LoginPage.dart';


class SplashService{
  void isLogin(BuildContext context){
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    });
  }
}