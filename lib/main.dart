// ignore_for_file: prefer_const_constructors, avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'frame1.dart';

void main() {
  runApp(
    MaterialApp(
      home: Softride(),
    ),
  );
}

class Softride extends StatelessWidget {
  const Softride({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(137, 32, 30, 30),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Softride',
                  style: TextStyle(
                    fontFamily: AutofillHints.fullStreetAddress,
                    color: Colors.green[50],
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                    child: Icon(
                  Icons.bike_scooter,
                  size: 100.0,
                  color: Colors.green[50],
                )),
                Expanded(
                  child: Text(
                    'Move In Style',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 45.0,
                        color: Colors.green[50],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  child: Expanded(
                    child: TextButton(
                      onPressed: () {
                        print('hi');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const frame1()),
                        );
                      },
                      child: ListTile(
                        title: Text(
                          'Get Started',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'RacingSansOne',
                            fontSize: 30.0,
                            color: Color.fromARGB(255, 3, 29, 5),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
