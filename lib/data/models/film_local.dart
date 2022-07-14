import 'package:hive/hive.dart';

part 'film_local.g.dart';

@HiveType(typeId: 1)
class FilmLocal extends HiveObject {
  @HiveField(0)
  late int id;
  @HiveField(1)
  late String name;
  @HiveField(2)
  late String overview;
  @HiveField(3)
  late String? posterPath;
  @HiveField(4)
  late double voteAverage;
  @HiveField(5)
  late String type;
}
