// ignore_for_file: prefer_const_constructors, avoid_print, unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:soft_ride/auth_page.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'frame1.dart';

void main() async {
  // Integrating Firebase --------------------
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // ----------------------------------------------

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
      backgroundColor: Color.fromARGB(136, 183, 99, 99),
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
                  // NAVIGATE IT TO AuthPage-------------------
                  child: Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAuth()),
                        );
                      },
                      // -------------------------------------------------------
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
