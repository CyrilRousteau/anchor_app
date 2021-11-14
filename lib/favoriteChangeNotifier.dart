/*import 'package:flutter/foundation.dart';
import 'package:anchor_app/anchor.dart';
import 'package:anchor_app/anchorBox.dart';

class FavoriteChangeNotifier with ChangeNotifier {
  Anchor anchor;

  FavoriteChangeNotifier(this.anchor);

  bool get isFavorited => anchor.isFavorite;

  int get favoriteCount => anchor.favoriteCount + (anchor.isFavorite ? 1 : 0);

  set isFavorited(bool isFavorited) {
    anchor.isFavorite = isFavorited;
    AnchorBox.box!.put(anchor.key(), anchor);
    notifyListeners();
  }
}

 */