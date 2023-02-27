import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_services/Splash_services.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  SplashService splashService = new SplashService();
  
  @override
  void initState() {
    // TODO: implement initState
    splashService.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/logo.png'), height: 200, width: 200,),
          ],
        ),
      ),
    );
  }
}
