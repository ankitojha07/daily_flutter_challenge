
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home.dart';
import 'package:flutter_application_1/auth/LoginPage.dart';
import 'package:flutter_application_1/auth/SignUp.dart';
import 'package:flutter_application_1/parsing_json/parse_json.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  ErrorWidget.builder = (FlutterErrorDetails details){
    return const Material();
  };
  
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
      home: ParseJson(),
      routes:{
        '/signup' : (context)=> SignUp(),
        '/Login' : (context)=> LoginPage(),
        '/home' : (context)=> HomePage(),
      },
    );
  }
}
