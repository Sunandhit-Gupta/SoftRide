// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class frame5 extends StatelessWidget {
  const frame5({super.key});

  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: signOutUser, icon: Icon(Icons.logout))],
      ),
      body: Center(
          child: Text(
        'Logged IN',
        style: TextStyle(
          fontSize: 100,
          color: Colors.green,
        ),
      )),
    );
  }
}
