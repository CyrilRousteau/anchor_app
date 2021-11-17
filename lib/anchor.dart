/*import 'package:hive/hive.dart';

part 'anchor.g.dart';

@HiveType(typeId: 0)
class Anchor {
  @HiveField(0)
  String title;
  @HiveField(1)
  String direction;
  @HiveField(2)
  String imageUrl;
  @HiveField(3)
  String location;
  @HiveField(4)
  String wind;
  @HiveField(5)
  String description;
  @HiveField(6)
  bool isFavorite;
  @HiveField(7)
  int favoriteCount;

  Anchor(this.title, this.direction, this.imageUrl, this.location, this.wind,
      this.description, this.isFavorite, this.favoriteCount);

  String key() => title.hashCode.toString();
}

 */
class Anchor {
  String title;
  String direction;
  String imageUrl;
  String longLat;
  String wind;
  String description;
  bool isFavorite;
  int favoriteCount;

  Anchor(this.title, this.direction, this.imageUrl, this.longLat,this.wind,
      this.description, this.isFavorite, this.favoriteCount);
}
