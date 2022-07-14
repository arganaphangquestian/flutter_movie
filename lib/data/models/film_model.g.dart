// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmModel _$$_FilmModelFromJson(Map<String, dynamic> json) => _$_FilmModel(
      json['id'] as int,
      json['name'] as String?,
      json['title'] as String?,
      (json['vote_average'] as num).toDouble(),
      json['poster_path'] as String?,
      json['overview'] as String,
    );

Map<String, dynamic> _$$_FilmModelToJson(_$_FilmModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
    };
