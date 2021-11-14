/*import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:anchor_app/anchor.dart';
import 'package:anchor_app/anchorBox.dart';
import 'package:hive/hive.dart';*/
// import 'package:hive_flutter/hive_flutter.dart';

/*class AnchorListScreen extends StatefulWidget {
  const AnchorListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AnchorListScreenState();
  }
}

class AnchorListScreenState extends State<AnchorListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Mes mouillages"),
    ),
      body: ValueListenableBuilder(
          valueListenable: AnchorBox.box!.listenable(),
          builder: (context, Box items, _) {
            List<String> keys = items.keys.cast<String>().toList();
            return ListView.builder(
              itemCount: keys.length,
              itemBuilder: (context, index) {
                final anchor = items.get(keys[index]);
                return Dismissible(
                    key: Key(anchor.title),
                    onDismissed: (direction) {
                      setState(() {
                        AnchorBox.box!.delete(anchor.key());
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${anchor.title} supprimé")));
                    },
                    background: Container(color: Colors.red),
                    child: AnchorItemWidget(anchor: anchor));
              },
            );
          }),
    );
  }
}

class AnchorItemWidget extends StatelessWidget {
  const AnchorItemWidget({Key? key, required this.anchor}) : super(key: key);
  final Anchor anchor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
      Navigator.pushNamed(
        context,
        '/anchor',
        arguments: anchor,
      );
    },
        child: Card(
        margin: const EdgeInsets.all(8),
    elevation: 8,
    child: Row(
    children: [
    Hero(
    tag: "imageAnchor" + anchor.title,
    child: CachedNetworkImage(
    imageUrl: anchor.imageUrl,
    placeholder: (context, url) => const Center(
    child: CircularProgressIndicator(),
    ),
    errorWidget: (context, url, error) =>
    const Icon(Icons.error),
    width: 100,
    height: 100,
    fit: BoxFit.cover,
    )),
      Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(anchor.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Text(
                anchor.direction,
                style:
                TextStyle(color: Colors.grey[500], fontSize: 16)
              )
            ],
          ))
    ],
    )));
  }
}
*/

