/*import 'package:flutter/material.dart';
import 'package:anchor_app/anchorBox.dart';
import 'package:anchor_app/anchorListScreen.dart';
import 'package:anchor_app/anchor_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AnchorBox.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mouillages de la Province Sud',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnchorListScreen(),
    );
  }
}

 */

import 'package:flutter/material.dart';
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
    home: AnchorScreen(),
    );
  }
}





