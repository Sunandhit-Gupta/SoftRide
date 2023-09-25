import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:soft_ride/frame1.dart';
import 'package:soft_ride/frame5.dart';

class MyAuth extends StatelessWidget {
  const MyAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {

        // Logged in--------------------
        if (snapshot.hasData) {
          print('Logged in');
          return  frame5();
        } 
        // Not logged in---------------
        else {
          return frame1();
        }
      },
    ));
  }
}
