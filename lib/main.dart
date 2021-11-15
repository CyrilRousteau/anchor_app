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
    home: AnchorListScreen()
    );
  }
}





