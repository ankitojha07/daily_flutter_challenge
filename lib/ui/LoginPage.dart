// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/logo.png'), height: 200, width: 200,),
              Text(
                'Login Now',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0),
              ),
              Text(
                'Please enter the details below to continue.',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
                        minimumSize: Size(200, 45),
                         onSurface: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text('Login'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
