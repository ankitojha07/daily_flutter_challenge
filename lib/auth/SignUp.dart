
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  late String _email;
  late String password;
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
                      'Register Yourself!',
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
                              onChanged: (value) {
                                _email = value;
                              },
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
                              onChanged: (value) {
                                password = value;
                              },
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
                            onPressed: ()  async {
                              try {
                                final newUser =
                                     await _auth.createUserWithEmailAndPassword(
                                        email: _email, password: password);
                                Navigator.pushNamed(context, 'home');
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Text('Sign Up'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Login');
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
