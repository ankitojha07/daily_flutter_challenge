// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screens/Home.dart';
import 'package:flutter_application_1/ui/SignUp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 150),
          children: [
            Center(
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('images/logo.png'),
                      height: 200,
                      width: 200,
                    ),
                    Text(
                      'Login Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 27.0),
                    ),
                    Text(
                      'Please enter the details below to continue.',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16.0),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: SizedBox(
                            height: 45,
                            child: TextField(
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size(300, 45),
                              onSurface: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: Text('Login'),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const SignUp()));
                          },
                          child: Text('Don\'t have an account?'),
                  ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
