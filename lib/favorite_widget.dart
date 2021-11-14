/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favoriteChangeNotifier.dart';
 */

/*class FavoriteIconWidget extends StatefulWidget {
  _FavoriteIconWidgetState createState() => _FavoriteIconWidgetState();
}

class _FavoriteIconWidgetState extends State<FavoriteIconWidget> {
  late bool _isFavorited;

  void _toggleFavorite(FavoriteChangeNotifier _notifier){
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }

      _notifier.isFavorited = _isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    FavoriteChangeNotifier _notifier = Provider.of<FavoriteChangeNotifier>(context);
    _isFavorited = _notifier.isFavorited;
    return IconButton(
      icon : _isFavorited ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
      color: Colors.red,
      onPressed: ()=>_toggleFavorite(_notifier),
    );
  }
}



class FavoriteTextWidget extends StatefulWidget {
  _FavoriteTextWidgetState createState() => _FavoriteTextWidgetState();
}

class _FavoriteTextWidgetState extends State<FavoriteTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteChangeNotifier>(
        builder: (context, notifier, _) => Text(notifier.favoriteCount.toString())
    );
  }
}
 */
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  final bool isFavorited;
  final int favoriteCount;

  const FavoriteWidget ({ Key? key, required this.isFavorited, required this.favoriteCount }): super(key:key);

  _FavoriteWidgetState createState() => _FavoriteWidgetState(this.isFavorited, this.favoriteCount);
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited ;
  int _favoriteCount;
  _FavoriteWidgetState(this._isFavorited, this._favoriteCount);

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount +=1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: _isFavorited? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
            color:const Color(0xFF061373),
            onPressed: _toggleFavorite,
        ),
        Text("$_favoriteCount")
      ],
    );
  }
}