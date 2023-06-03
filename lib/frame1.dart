// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'frame5.dart';
import 'frame6.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'frame4.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class frame1 extends StatelessWidget {
  const frame1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // app bar
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 200,
          backgroundColor: HexColor('#0C1B2E'),
          centerTitle: true, // Increase the height here
          title: Text(
            'Welcome',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),

              // text field for username

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter username',
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(192, 233, 93, 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // SizedBox(
              //   height: 20.0,
              // ),

              //text field for password

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(192, 233, 93, 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              //forget password
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const frame6()),
                      );
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Color.fromRGBO(122, 158, 37, 0.965),
                          fontWeight: FontWeight.bold),
                      // textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),

              //login button
              SizedBox(
                width: 250.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(192, 233, 93, 10)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const frame5()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: HexColor('#0C1B2E'),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              //     divider

              SizedBox(
                width: 200.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const frame4()),
                        );
                      },
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/google.png'),
                            height: 34.0,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                                color: HexColor('#0C1B2E'),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const frame4()),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.facebook),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                color: HexColor('#0C1B2E'),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Color.fromRGBO(122, 158, 37, 0.965),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
