import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'anchor.dart';
import 'anchor_screen.dart';

class AnchorListScreen extends StatefulWidget {
  const AnchorListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AnchorListScreenState();
  }
}

class AnchorListScreenState extends State<AnchorListScreen> {

  final List<Anchor> anchors = [
    Anchor (
      "Ilôt Maître",
      "Mouillage sud-est",
      "https://www.province-sud.nc/pandoreweb/pandore/photo/PhotoFile/ff80818167b930800167b93ab8ed04e5/fichier?_responseMode=binary",
      "166.40965692666444 \n22.33430032073978",
      "NE - E \n SE",
      "Mouillage de jour (de nuit par alizé établi et stable).  \nDes corps morts y sont disponibles. Attention d'éviter le récif se trouvant au nord-est si vous venez de Nouméa.\nIl y a un hôtel sur l'îlot.",
      false,
      1),
    Anchor(
        "Ilôt Signal",
        "Mouillage sud-est",
        "https://live.staticflickr.com/65535/49322797361_892111a594_b.jpg",
        "166.2928364605992 \n-22.296423852642228",
        "NE - E \n SE",
        "Mouiller dans +/- 4m de fond de sable et corail. \nAppelé Signal à cause d'un petit phare érigé vers 1850. \nProtection relative par alizés dominant et pas trop fort.",
        false,
        1),
    Anchor(
        "Ilôt Larégnère",
        "Mouillage sud-est",
        "https://p1.storage.canalblog.com/17/76/1558001/119545454_o.jpg",
        "166.3194757203786 \n-22.327390834005744",
        "NE - E \n SE",
        "L'îlot est dominé par une formation littorale herbacée de haut de plage. Des fourrés littoraux recouvrent la façade Sud.\n L'îlot abrite une végétation typique de ces milieux comme le bois matelot, le martaoui ou encore le bois de rose d'Océanie.\nL'îlot sous-marin est remarquable.",
        false,
        1),
    Anchor(
        "Ilôt Goeland",
        "Mouillage sud-est",
        "http://static.apidae-tourisme.com/filestore/objets-touristiques/images/123/184/8370299.jpg",
        "166.379525221 \n-22.3746279816",
        "NE - E \n SE",
        "Joli petit mouillage assez protégé des alizés. Mouiller dans +/- 5m d'eau sur fond de sable. \n L'ilot est une réserve Intégrale Saisonière du 1er octobre au 31 mars. Il est donbc interdit d'y mouiller et d'y débarquer.",
        false,
        1),
    Anchor(
        "Ilôt Mbé Kouen",
        "Mouillage sud-est",
        "https://www.drone-spot.tech/photos/normal/17e2a273-6194-4b9a-a67f-807641d303fd.jpeg",
        "166.22175099056335 \n-22.265056249281358",
        "NE - E \n SE",
        "Bon mouillage dans +/- 7m de sable et corail. \nl'approche peut être délicate par l'est.\n Protégé des alizés dominant. \nUne coutume consiste à y apporter un arbrisseau (cocotier, philaos, ...) et de le planter pour aider cet îlot en formation à se couvrir de végétation.",
        false,
        1),
    Anchor(
        "Ilôt Kouaré",
        "Mouillage sud-est / ouest",
        "https://la1ere.francetvinfo.fr/image/gkHAvM9MMQKgWxf_7meaSvqXw6k/1200x900/outremer/2019/10/02/5d94db965e5b8__kouare_.jpg",
        "166.4801 \n-22.4630",
        "NE - E \n SE - O",
        "Mouiller dans +/-7m de sable et corail. \nAttention aux quelques tête de corail qui n'affleurent jamais. Mouillage idylique. \nTrès belle plongée. Pêche. \nOn peut moulller de l'autre coté de l'ilot en cas de secteur Ouest.",
        false,
        1),
    Anchor(
        "Ilôt Mbo",
        "Mouillage sud-est",
        "http://1.bp.blogspot.com/-z_QLi-XiC_8/VnJtXtA22YI/AAAAAAAAFnI/SB8qHYzAv8Y/s1600/Mbo.jpg",
        "166.2259 \n-22.2430",
        "NE - E \n SE",
        "Mouiller dans +/-5m de sable. \nTrès beau mouillage face à l'ilôt. \nTrès belle plongée. Pêche.",
        false,
        1),
    Anchor(
        "Ilôt Mba",
        "Mouillage sud-est",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTViYzvvVLqzfItUhy_ozAajioet1aW4c-_ez57O3bNcTKX8vLmV9WTnnhZuP5xtmJN2lQ&usqp=CAU",
        "166.2000 \n-22.2119",
        "NE - E \n SE",
        "Mouiller dans +/-12m de sable. \nTrès beau mouillage face à l'ilôt, Un peu rouleur car exposé à la houle entrante. Mouillage non déconséillé de nuit. \nBeau snorkeling. Pêche et ballade sur l'îlot.",
        false,
        1),
    Anchor(
        "Baie de Iré",
        "Mouillage sud-est",
        "https://img.over-blog.com/600x450/1/10/54/31/Ile-Ouen---Aout-2011/Lagon-sud-27-03-09_0252.jpg",
        "166.48137 \n-22.24409",
        "NE - E \n SE",
        "Mouiller dans +/-14m de sable et corail. \nAttention au récf qui remonte très vite. Mouillage idylique. \nTrès belle plongée dans le canal de Woodin. Pêche. \nUn estuaire offre une balade le long du ruisseau pour se rafraichir à l'eau douce. \nDes sentier offrent de beaux panoramas sur l'Ile Ouen ",
        false,
        1),
    Anchor(
        "Ilot Casy",
        "Mouillage sud-est ouest",
        "https://leguide.nc/images/produits/12_photo@400x225.jpg",
        "166.50510 \n-22.21406",
        "NE - E \n SE - O",
        "Mouiller dans +/-10m de sable et corail. \nAttention au récf qui remonte très vite. Mouillage idylique face au ponton. \nTrès beau snorkeling. Réserve, pêche interdite. \nDe nombreux sentiers permettent de découvrir ce bel endroit chargé d'histoire. \nLe tour de l'ilot se fait entre 1h et 2h. \nSentiers très bien balisés et emplacement de camping ",
        false,
        1),
    Anchor(
        "Anse de l'Est",
        "Mouillage sud-est ",
        "https://www.jomaya.com/wp-content/fichiers/ngg_featured/5-sud-15.jpg",
        "166.52655 \n-22.20016",
        "NE - E \n SE",
        "Mouiller dans +/-10m de sable et vase.\n Très bonne accroche \nAttention au récf qui remonte très vite. Mouillage idylique face à un estuaire. \nTrès beau snorkeling. Pêche autorisé, possibilité de chasser sur l'ilôt St Gabriel en face. \nL'estuaire se remonte en annexe, on peut apercevoir d'ancienne ruine du temps des bagnars.Au bout la réconpense par des trous d'eau douce. \nPoint d'eau disponible face au mouillage.",
        false,
        1),
    Anchor(
        "Baie Magique",
        "Mouillage sud-est ",
        "https://www.enezgreen.com/wp-content/uploads/whales-nc-2-1-copie-copyright-enezgreen.jpg",
        "166.54798 \n-22.23105",
        "NE - E \n SE",
        "Mouiller sur des bouées installées par la Province Sud.\n Il y'a à ce jour  sept bouées. \n Mouillage idylique face aux montagnes verdoyantes du sud. \nTrès beau snorkeling. Pêche autorisé. \nDes chemins de randonnées partent du mouillage jusqu'au point de vue des baleines sur la baie de Prony \nCompter environ 2h aller / retour",
        false,
        1),
    Anchor(
        "Baie Magique",
        "Mouillage sud-est ",
        "https://www.enezgreen.com/wp-content/uploads/whales-nc-2-1-copie-copyright-enezgreen.jpg",
        "166.54798 \n-22.23105",
        "NE - E \n SE",
        "Mouiller sur des bouées installées par la Province Sud.\n Il y'a à ce jour  sept bouées. \n Mouillage idylique face aux montagnes verdoyantes du sud. \nTrès beau snorkeling. Pêche autorisé. \nDes chemins de randonnées partent du mouillage jusqu'au point de vue des baleines sur la baie de Prony \nCompter environ 2h aller / retour",
        false,
        1),
    Anchor(
        "Baie de Kuto",
        "Mouillage sud-est ",
        "https://www.nouvellecaledonie.travel/sites/default/files/2017-06/baie_kuto_ile_des_pins_nouvelle_caledonie_1920x540.jpg",
        "167.26438 \n-22.39424",
        "NE - E \n SE",
        "Le mouillage principale de l'ile des pins. \nTrès bonne protection de secteur Est, fond de sable de très bonne tenue (+/- 5m).\n En cas de vent de secteur Ouest utiliser le mouillage de la baie de Kanumera. \nCet emplacement se trouve directement dans le centre touristique de L'IDP. \n Présences de nombreux gîte et hôtel. \n Possibilité de restauration, toujours sous réservation.",
        false,
        1),
    Anchor(
        "Ilot Brosse",
        "Mouillage sud-est ",
        "https://api.cloudly.space/resize/crop/1024/512/60/aHR0cDovL3N0YXRpYy5hcGlkYWUtdG91cmlzbWUuY29tL2ZpbGVzdG9yZS9vYmpldHMtdG91cmlzdGlxdWVzL2ltYWdlcy8xNjgvMTQ2Lzc4MzYzMjguanBn/image.jpg",
        "167.26438 \n-22.39424",
        "NE - E \n SE",
        "l'îlot Brosse est situé au large de la Baie de Kuto. \nCe sont ses pins colonnaires – les araucarias – et sa forme caractéristique qui lui ont donné ce drôle de nom \n Le mouillage se fait dans 4/5 m de fond sableux. \n Possibilité de mouiller la journée mais demande d'autorisation pour la nuit. \n Belle ballades et PMT autour de l'îlot. \n Des tables et des chaises sont présent à l'ombre des pins.",
        false,
        1),
    Anchor(
        "Ilot Grand Mato",
        "Mouillage sud-est ",
        "https://media-cdn.tripadvisor.com/media/photo-s/10/66/8b/5b/ilot-mato.jpg",
        "166.4789 \n-22.3297",
        "NE - E \n SE",
        "Mouiller dans +/- 8m de sable et corail. La tenue reste bonne pour beaucoup de secteur.\n Le vent si il est trop fort peu vite gâcher ce très joli mouillage. \nAttention  aux nombreuses patate de corail. \n A prendre de jour par très beau temps. \nBaignade, kayak, marche jusqu’au point culminant de l’îlot, chasse sous-marine.",
        false,
        1),
    Anchor(
        "Ilot Amédée",
        "Mouillage sud-est ",
        "https://www.nouvellecaledonie.travel/sites/default/files/2020-12/%C3%8Elot-Am%C3%A9d%C3%A9e-Noum%C3%A9a_0.jpg",
        "166.2805 \n-22.2838",
        "NE - E \n SE",
        "Mouiller dans +/- 10m de sable et corail. Il se trouve à quelques 13 milles nautiques (environ 24 km) au sud-sud-est de Port Moselle, devant la passe de Boulari.\n C'est ce phare de 56 m de haut. \nOn peut monter au sommet après avoir affronté les 247 marches en colimaçon. \n Situé au milieu d’une zone classée en réserve marine, cet îlot est particulièrement réputé pour ses fonds sous-marins.",
        false,
        1),
    Anchor(
        "Ilot Uatio",
        "Mouillage sud-est ",
        "https://m.psecn.photoshelter.com/img-get/I00005HR_mhEkX7I/t/170/I00005HR_mhEkX7I.jpg",
        "166.7994 \n-22.7107",
        "NE - E \n SE",
        "Mouiller dans +/- 5m de sable. Cet ilôt est une réserve marine, il est interdit de débarquer sur l'ilot en cas de présence d'un drapeau rouge. \nCete interdiction est destinée à protéger les sites de nification. 14 ilots su grand sud sont conernés.",
        false,
        1),
    Anchor(
        "Ilot Ua",
        "Mouillage sud-est ",
        "https://www.province-sud.nc/sites/default/files/inline-images/ilot%20Mbe%20%285%29.JPG",
        "166.8109 \n-22.7087",
        "NE - E \n SE",
        "Joli mouillage sur fond de sable et corail.\n Bonne protection par vent dominant SE. \nMouiller dans +/-8m. Attention aux patates de corail.",
        false,
        1),
    Anchor(
        "Ilot Bailly",
        "Mouillage sud-est ouest ",
        "https://api.cloudly.space/resize/crop/1200/627/60/aHR0cDovL3N0YXRpYy5hcGlkYWUtdG91cmlzbWUuY29tL2ZpbGVzdG9yZS9vYmpldHMtdG91cmlzdGlxdWVzL2ltYWdlcy85NC80My85MTIwNjA2LmpwZw==/image.jpg",
        "166.5756 \n-22.2972",
        "NE - E \n SE - O",
        "Joli mouillage sur fond de sable et corail.\n Bonne protection par vent dominant SE et secteur Ouest de l'autre côté de l'îlot. \nMouiller dans +/-8m.\n Possibilité de descendre sur l'ilot, sentier balisé. \n Réputé pour ses moustiques, prévoir une protection.",
        false,
        1),
    Anchor(
        "Ilot Uere",
        "Mouillage tout vent ",
        "https://lh3.googleusercontent.com/proxy/ytKcv_QG36MgWnXv5mB-p73UAXJudot1RzanIrOgmn7VIZfrHvlEI9tcpIrjXY68aTr3ZRti2pyzuPH8_DjmEV_JK-uRS-Uq3g",
        "166.4768 \n-22.3137",
        "N - E \n S - O",
        "Joli mouillage sur fond de sable et corail.\n Bonne protection par tout vent dominant. \nMouiller dans +/-5m.\n Possibilité de descendre sur l'ilot, sentier balisé jusqu' au point de vue.",
        false,
        1),
    Anchor(
        "Kuendu Beach",
        "Mouillage sud-est",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk-zDtMc641lsUQp0SmZy1t3vWEToveMIxiQ&usqp=CAU",
        "166.3894 \n-22.2583",
        "NE - E \n SE",
        "Joli mouillage sur fond de sable et corail entre deux récifs.\n Attention à l'approche, les fonds remontent rapidement. \nMouiller dans +/-7m.\n Possibilité de descendre à terre.\n Hôtel, snack, piscine et plage fréquentée par les calédoniens. \n Peut-être bruyant les week-end",
        false,
        1),
    Anchor(
        "Ile TNdu",
        "Mouillage tout secteur",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwbYVueS74_Lj7KZW6oL7T_h8Q0bQ4Ii3Rn5hW3mAlGnaAGA0dTrWZ-fQIkLbCt9aDxAo&usqp=CAU",
        "166.28144 \n-22.1732",
        "N - E \n S - O",
        "Joli mouillage sur fond de sable et corail.\n Mouiller dans +/-7m.\n Possibilité de descendre à terre pour point de vue. \n Possibilté de mouillage de l'autre côté de la presqu'ile en secteur ouest",
        false,
        1),
    Anchor(
        "Ile Abu",
        "Mouillage sud-est",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwbYVueS74_Lj7KZW6oL7T_h8Q0bQ4Ii3Rn5hW3mAlGnaAGA0dTrWZ-fQIkLbCt9aDxAo&usqp=CAU",
        "166.1580 \n-22.1159",
        "N - E \n S - O",
        "Magnifique mouillage sur fond de sable et corail.\n Mouiller dans +/-7m.\n Possibilité de descendre sur l'îlot, une petite plage à marée basse se découvre. \n Possibilté de mouillage sur les deux iles latérales M'bé et Moro. \n Bonne protection également sur les secteurs ouest grâce à la protection des reliefs de la grande Terre proche des Ilots.",
        false,
        1),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: const Text("Mouillages Province Sud"),
     ),
         body: ListView.builder(
           itemCount: anchors.length,
           itemBuilder: (context, index){
             final anchor = anchors[index];
             return Dismissible(key: Key(anchor.title),
                 onDismissed: (direction){
               setState(() {
                 anchors.removeAt(index);
               });
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text("${anchor.title} supprimé")));
                 },
                 background: Container(color: Colors.blue,),
                 child: AnchorItemWidget(anchor: anchor)); AnchorItemWidget(anchor: anchors[index]);
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
    return  GestureDetector(
      onTap: (){
        Navigator.push(context,
            PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation)=> AnchorScreen(anchor: anchor),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                opacity: animation,
                child: child,
              );
            }
        ));
      },
        child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 8,
        child: Row(
          children: [
            Hero(
              tag: "anchorRecipe" + anchor.title,
              child: CachedNetworkImage(
              imageUrl: anchor.imageUrl,
              placeholder: (context, url) =>
                  const Center(
                child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
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
              )
            )
          ],
        )
      )
    );
  }

}
