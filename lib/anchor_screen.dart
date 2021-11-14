/*import 'package:flutter/material.dart';
import 'package:anchor_app/favoriteChangeNotifier.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'favorite_widget.dart';
import 'anchor.dart';

class AnchorScreen extends StatelessWidget {
  const AnchorScreen({Key? key, required this.anchor}) : super(key: key);
  final Anchor anchor;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
        Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                anchor.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Text(
              anchor.direction,
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
          ],
        )),
            FavoriteIconWidget(),
            FavoriteTextWidget()
          ],
        ));

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.gps_fixed, anchor.location),
          _buildButtonColumn(Colors.blue, Icons.anchor_outlined, anchor.wind),
        ],
      ),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        anchor.description,
        softWrap: true,
      ),
    );
    return ChangeNotifierProvider(
        create: (context)=> FavoriteChangeNotifier(anchor),
        child: Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Mes mouillages"),
    ),
    body: ListView(children: [
    Hero(
    tag: "imageAnchor" + anchor.title,
    child:CachedNetworkImage(
    placeholder: (context, url) => const Center(
    child: CircularProgressIndicator(),
    ),
    errorWidget: (context, url, error) => const Icon(Icons.error),
    imageUrl:
    anchor.imageUrl,
    width: 600,
    height: 240,
    fit: BoxFit.cover,
    )),
    titleSection,
    buttonSection,
    descriptionSection
    ])),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Icon(icon, color: color),
        ),
        Text(label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            )),
      ],
    );
  }
}

 */
import 'package:anchor_app/anchor.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'favorite_widget.dart';

class AnchorScreen extends StatelessWidget {
  const AnchorScreen({Key? key, required this.anchor}) : super(key: key);
  final Anchor anchor;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom:8),
                  child: Text (anchor.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      )),
                ),
                Text (anchor.direction,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16
                  ),),
              ],
            ),
          ),
           FavoriteWidget(isFavorited: anchor.isFavorite, favoriteCount: anchor.favoriteCount)
        ],
      ),
    );

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Colors.blue, Icons.gps_fixed, anchor.location),
            _buildButtonColumn(Colors.blue, Icons.waves_rounded , anchor.wind),
          ]),
    );

    Widget descriptionSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(anchor.description,
          softWrap: true,)
    );
    return Scaffold(
        appBar: AppBar(
          title:const Text('Mes mouillages'),
        ),
        body: ListView(
            children: [
              CachedNetworkImage(
                imageUrl:
                anchor.imageUrl,
                placeholder: (context, url) => const Center(child:CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              descriptionSection,
            ]));
  }
  Column _buildButtonColumn(Color color,IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(icon, color: color),
        ),
        Text(label,
            style:TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            ))
      ],
    );
  }
}
