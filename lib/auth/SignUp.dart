// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/ui/LoginPage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
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
                  Image(image: AssetImage('images/logo.png'), height: 200, width: 200,),
                  Text(
                    'Register Yourself!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0),
                  ),
                  Text(
                    'Please enter the details below to continue.',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0),
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
                              
                              autocorrect: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Confirm email',
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
                            onPressed: () {},
                            child: Text('Sign Up'),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const LoginPage()));
                          },
                          child: Text('Already have an account?'),
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
