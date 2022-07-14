import 'package:moviex/data/datasources/local_data_source.dart';
import 'package:moviex/data/datasources/remote_data_source.dart';
import 'package:moviex/data/models/film_model.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/exception.dart';
import 'package:moviex/utils/remote_state.dart';

class FilmRepositoryImpl implements FilmRepository {
  final RemoteDataSource _remote;
  final LocalDataSource _local;
  FilmRepositoryImpl(this._remote, this._local);

  @override
  Future<RemoteState<bool>> addWatchlist(FilmType type, Film film) async {
    try {
      final result = await _local.addWatchlist(
        type,
        FilmModel(
          film.id,
          film.name,
          film.name,
          film.voteAverage,
          film.posterPath,
          film.overview,
        ),
      );
      return RemoteState.success(data: result);
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<bool>> getExistWatchlist(FilmType type, int id) async {
    try {
      final result = await _local.getWatchlistExist(type, id);
      return RemoteState.success(data: result);
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<Film>> getDetail(FilmType type, int id) async {
    try {
      final result = await _remote.getDetail(type, id);
      return RemoteState.success(
        data: Film(
          id: id,
          name: result.name ?? result.title ?? '',
          voteAverage: result.voteAverage,
          posterPath: result.posterPath ?? '',
          overview: result.overview,
          type: type,
        ),
      );
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<List<Film>>> getNowPlaying(FilmType type) async {
    try {
      final result = await _remote.getNowPlaying(type);
      return RemoteState.success(
        data: result
            .map(
              (e) => Film(
                id: e.id,
                name: e.name ?? e.title ?? '',
                voteAverage: e.voteAverage,
                posterPath: e.posterPath ?? '',
                overview: e.overview,
                type: type,
              ),
            )
            .toList(),
      );
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<List<Film>>> getPopular(FilmType type) async {
    try {
      final result = await _remote.getPopular(type);
      return RemoteState.success(
        data: result
            .map(
              (e) => Film(
                id: e.id,
                name: e.name ?? e.title ?? '',
                voteAverage: e.voteAverage,
                posterPath: e.posterPath ?? '',
                overview: e.overview,
                type: type,
              ),
            )
            .toList(),
      );
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<List<Film>>> getRecommendations(
    FilmType type,
    int id,
  ) async {
    try {
      final result = await _remote.getRecommendations(type, id);
      return RemoteState.success(
        data: result
            .map(
              (e) => Film(
                id: e.id,
                name: e.name ?? e.title ?? '',
                voteAverage: e.voteAverage,
                posterPath: e.posterPath ?? '',
                overview: e.overview,
                type: type,
              ),
            )
            .toList(),
      );
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<List<Film>>> getTopRated(FilmType type) async {
    try {
      final result = await _remote.getTopRated(type);
      return RemoteState.success(
        data: result
            .map(
              (e) => Film(
                id: e.id,
                name: e.name ?? e.title ?? '',
                voteAverage: e.voteAverage,
                posterPath: e.posterPath ?? '',
                overview: e.overview,
                type: type,
              ),
            )
            .toList(),
      );
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<List<Film>>> getWatchlist(FilmType type) async {
    try {
      final result = await _local.getWatchlist(type);
      return RemoteState.success(
        data: result
            .map(
              (e) => Film(
                id: e.id,
                name: e.name ?? e.title ?? '',
                voteAverage: e.voteAverage,
                posterPath: e.posterPath ?? '',
                overview: e.overview,
                type: type,
              ),
            )
            .toList(),
      );
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<bool>> removeWatchlist(FilmType type, int id) async {
    try {
      final result = await _local.removeWatchlist(type, id);
      return RemoteState.success(data: result);
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }

  @override
  Future<RemoteState<List<Film>>> search(FilmType type, String query) async {
    try {
      final result = await _remote.search(type, query);
      return RemoteState.success(
        data: result
            .map(
              (e) => Film(
                id: e.id,
                name: e.name ?? e.title ?? '',
                voteAverage: e.voteAverage,
                posterPath: e.posterPath ?? '',
                overview: e.overview,
                type: type,
              ),
            )
            .toList(),
      );
    } on DatasourceException catch (e) {
      return RemoteState.error(message: e.message);
    }
  }
}
