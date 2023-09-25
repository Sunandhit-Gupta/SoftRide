// import 'dart:js';
// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soft_ride/auth_page.dart';
import 'frame1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'frame4.dart';
import 'package:hexcolor/hexcolor.dart';

class frame3 extends StatelessWidget {
  frame3({super.key});

  final usernameEmailInputRegisterController = TextEditingController();
  final passwordInputRegisterController = TextEditingController();
  final userNameInputRegisterController = TextEditingController();

  void registerNew() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: usernameEmailInputRegisterController.text,
        password: passwordInputRegisterController.text);
    FirebaseAuth.instance.signOut();
  }

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
          title: const Text(
            'Register',
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
              const SizedBox(
                height: 20.0,
              ),

              // Text Input for Name-----------------------------------

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: TextFormField(
                    // UsernameEmailController--------------------------------
                    controller: userNameInputRegisterController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                      labelText: 'Full Name',
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

              // text field for username
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: TextFormField(
                    // UsernameEmailController--------------------------------
                    controller: usernameEmailInputRegisterController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Email',
                      labelText: 'Email',
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
                    // passwordController---------------------------------------
                    controller: passwordInputRegisterController,
                    obscureText: true,
                    decoration: const InputDecoration(
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

              const SizedBox(
                height: 20.0,
              ),

              //---------Register button------------------------------------------
              SizedBox(
                width: 250.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(192, 233, 93, 10)),
                  onPressed: () {
                    registerNew();

                    // FirebaseAuth.instance
                    //     .authStateChanges()
                    //     .listen((User? user) {
                    //   if (user == null) {

                    //   } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAuth()));
                    //   }
                    // });
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: HexColor('#0C1B2E'),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //     divider

              const SizedBox(
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
                          const Image(
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
                          const Icon(FontAwesomeIcons.facebook),
                          const SizedBox(
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
          child: TextButton(
            // -------------------------------
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => frame1()),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'LoginPage',
                  style: TextStyle(
                      color: Color.fromRGBO(122, 158, 37, 0.965),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
