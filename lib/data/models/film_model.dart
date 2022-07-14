import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'film_model.freezed.dart';
part 'film_model.g.dart';

@freezed
class FilmModel with _$FilmModel {
  factory FilmModel(
    int id,
    String? name,
    String? title,
    @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'poster_path') String? posterPath,
    String overview,
  ) = _FilmModel;
  factory FilmModel.fromJson(Map<String, dynamic> json) =>
      _$FilmModelFromJson(json);
}
