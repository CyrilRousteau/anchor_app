import 'package:anchor_app/anchor.dart';
import 'package:anchor_app/favorite_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';

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
           FavoriteIconWidget(),
          FavoriteTextWidget()
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
    return ChangeNotifierProvider(
      create: (context)=> FavoriteChangeNotifier(anchor.isFavorite, anchor.favoriteCount),
      child: Scaffold(
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
            ]))
    );
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
