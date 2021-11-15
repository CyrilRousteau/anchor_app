import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'anchor.dart';

class AnchorListScreen extends StatelessWidget {
   AnchorListScreen({Key? key}) : super(key: key);

  final List<Anchor> anchors = [
    Anchor (
      "Ilôt Maître",
      "Mouillage sud-est",
      "https://www.province-sud.nc/pandoreweb/pandore/photo/PhotoFile/ff80818167b930800167b93ab8ed04e5/fichier?_responseMode=binary",
      "166.40965692666444 \n-22.33430032073978",
      "NE - E \n SE",
      "Mouillage de jour (de nuit par alizé établi et stable).  \nDes corps morts y sont disponibles. Attention d'éviter le récif se trouvant au nord-est si vous venez de Nouméa.\nIl y a un hôtel sur l'îlot.",
      false,
      1),
    Anchor(
        "Ilôt Signal",
        "Mouillage sud-est",
        "https://live.staticflickr.com/65535/49322797361_892111a594_b.jpg",
        "166.2928364605992 \n -22.296423852642228",
        "NE - E \n SE",
        "Mouiller dans +/- 4m de fond de sable et corail. \nAppelé Signal à cause d'un petit phare érigé vers 1850. \nProtection relative par alizés dominant et pas trop fort.",
        true,
        5),
    Anchor(
        "Ilôt Larégnère",
        "Mouillage sud-est",
        "https://p1.storage.canalblog.com/17/76/1558001/119545454_o.jpg",
        "166.3194757203786 \n -22.327390834005744",
        "NE - E \n SE",
        "L'îlot est dominé par une formation littorale herbacée de haut de plage. Des fourrés littoraux recouvrent la façade Sud.\n L'îlot abrite une végétation typique de ces milieux comme le bois matelot, le martaoui ou encore le bois de rose d'Océanie.\nL'îlot sous-marin est remarquable.",
        true,
        15),
    Anchor(
        "Ilôt Goeland",
        "Mouillage sud-est",
        "http://static.apidae-tourisme.com/filestore/objets-touristiques/images/123/184/8370299.jpg",
        "166.379525221 \n -22.3746279816",
        "NE - E \n SE",
        "Joli petit mouillage assez protégé des alizés. Mouiller dans +/- 5m d'eau sur fond de sable. \n L'ilot est une réserve Intégrale Saisonière du 1er octobre au 31 mars. Il est donbc interdit d'y mouiller et d'y débarquer.",
        false,
        25),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: Text("Mes mouillages"),
     ),
         body: ListView.builder(
           itemCount: anchors.length,
           itemBuilder: (context, index){
             return AnchorItemWidget(anchor: anchors[index]);
           },
         ),
    );
  }
}

class AnchorItemWidget extends StatelessWidget {
  const AnchorItemWidget({Key? key, required this.anchor}) : super(key: key);
  final Anchor anchor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: anchor.imageUrl,
            placeholder: (context, url) =>
                const Center(
              child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
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
            )
          )
        ],
      )
    );
  }

}
