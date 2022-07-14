import 'dart:async';

import 'package:hive/hive.dart';
import 'package:moviex/data/models/film_local.dart';
import 'package:moviex/data/models/film_model.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/exception.dart';

abstract class LocalDataSource {
  Future<List<FilmModel>> getWatchlist(FilmType type);
  Future<bool> addWatchlist(FilmType type, FilmModel film);
  Future<bool> getWatchlistExist(FilmType type, int id);
  Future<bool> removeWatchlist(FilmType type, int id);
}

class LocalDataSourceImpl implements LocalDataSource {
  final Box _box;
  LocalDataSourceImpl(this._box);

  @override
  Future<bool> addWatchlist(FilmType type, FilmModel film) async {
    try {
      _box.put(
        '$type-${film.id}',
        FilmLocal()
          ..id = film.id
          ..name = film.name ?? film.title ?? ''
          ..overview = film.overview
          ..posterPath = film.posterPath
          ..voteAverage = film.voteAverage
          ..type = type.toString(),
      );
      return true;
    } catch (_) {
      throw DatasourceException();
    }
  }

  @override
  Future<bool> getWatchlistExist(FilmType type, int id) async {
    try {
      return _box.containsKey('$type-$id');
    } catch (_) {
      throw DatasourceException();
    }
  }

  @override
  Future<List<FilmModel>> getWatchlist(
    FilmType type,
  ) async {
    try {
      var data = _box.values
          .cast<FilmLocal>()
          .where((i) => i.type == type.toString())
          .map(
            (e) => FilmModel(
              e.id,
              e.name,
              e.name,
              e.voteAverage,
              e.posterPath ?? '',
              e.overview,
            ),
          )
          .toList();
      return data;
    } catch (_) {
      throw DatasourceException();
    }
  }

  @override
  Future<bool> removeWatchlist(FilmType type, int id) async {
    try {
      _box.delete('$type-$id');
      return true;
    } catch (_) {
      throw DatasourceException();
    }
  }
}
