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
import 'anchor.dart';
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
    home: AnchorScreen(anchor: Anchor(
          "Ilôt Maître",
          "Mouillage sud-est",
          "https://www.province-sud.nc/pandoreweb/pandore/photo/PhotoFile/ff80818167b930800167b93ab8ed04e5/fichier?_responseMode=binary",
          "166.40965692666444 \n-22.33430032073978",
          "NE - E \n SE",
          "Mouillage de jour (de nuit par alizé établi et stable).  \nDes corps morts y sont disponibles. Attention d'éviter le récif se trouvant au nord-est si vous venez de Nouméa.\nIl y a un hôtel sur l'îlot.",
          false,
          1)),
    );
  }
}





