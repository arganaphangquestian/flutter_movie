import 'package:moviex/data/models/film_model.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/utils/enum.dart';

import 'response.dart';

final model = FilmModel.fromJson(response);
final tvfilm = Film(
  id: model.id,
  name: model.name ?? model.title ?? '',
  voteAverage: model.voteAverage,
  posterPath: model.posterPath!,
  overview: model.overview,
  type: FilmType.tv,
);
final moviefilm = Film(
  id: model.id,
  name: model.name ?? model.title ?? '',
  voteAverage: model.voteAverage,
  posterPath: model.posterPath!,
  overview: model.overview,
  type: FilmType.movie,
);
