import 'dart:async';

import 'package:flutter/material.dart';
import 'anchor.dart';
import 'anchor_list_screen.dart';
import 'anchor_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
        title: 'Mouillages de la Province Sud',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: const SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const AnchorListScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child : Image.asset(
              'assets/images/splash_screen.jpg',
              height: 120,
            ),
            ),
            const Text("Guide des Mouillages du lagon Sud",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold, fontSize: 20)),
            // logo here

            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}





