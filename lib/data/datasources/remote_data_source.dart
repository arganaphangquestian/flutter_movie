import 'package:dio/dio.dart';
import 'package:moviex/data/models/film_model.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/exception.dart';

abstract class RemoteDataSource {
  Future<List<FilmModel>> getNowPlaying(FilmType type);
  Future<List<FilmModel>> getPopular(FilmType type);
  Future<List<FilmModel>> getTopRated(FilmType type);
  Future<FilmModel> getDetail(FilmType type, int id);
  Future<List<FilmModel>> getRecommendations(FilmType type, int id);
  Future<List<FilmModel>> search(FilmType type, String query);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio _client;

  RemoteDataSourceImpl(this._client);

  @override
  Future<FilmModel> getDetail(FilmType type, int id) async {
    try {
      final response = await _client.get('${type.endpoint()}/$id');
      final result = FilmModel.fromJson(
        response.data as Map<String, dynamic>,
      );
      return result;
    } catch (e) {
      throw DatasourceException();
    }
  }

  @override
  Future<List<FilmModel>> getNowPlaying(FilmType type) async {
    try {
      var path = '${type.endpoint()}/airing_today';
      if (type == FilmType.movie) {
        path = '${type.endpoint()}/now_playing';
      }
      final response = await _client.get(path);
      final result = (response.data['results'] as List).map((e) {
        return FilmModel.fromJson(e);
      }).toList();
      return result;
    } catch (e) {
      throw DatasourceException();
    }
  }

  @override
  Future<List<FilmModel>> getPopular(FilmType type) async {
    try {
      final response = await _client.get('${type.endpoint()}/popular');
      final result = (response.data['results'] as List)
          .map(
            (e) => FilmModel.fromJson(e),
          )
          .toList();
      return result;
    } catch (e) {
      throw DatasourceException();
    }
  }

  @override
  Future<List<FilmModel>> getRecommendations(FilmType type, int id) async {
    try {
      final response = await _client.get(
        '${type.endpoint()}/$id/recommendations',
      );
      final result = (response.data['results'] as List)
          .map(
            (e) => FilmModel.fromJson(e),
          )
          .toList();
      return result;
    } catch (e) {
      throw DatasourceException();
    }
  }

  @override
  Future<List<FilmModel>> getTopRated(FilmType type) async {
    try {
      final response = await _client.get('${type.endpoint()}/top_rated');
      final result = (response.data['results'] as List)
          .map(
            (e) => FilmModel.fromJson(e),
          )
          .toList();
      return result;
    } catch (e) {
      throw DatasourceException();
    }
  }

  @override
  Future<List<FilmModel>> search(FilmType type, String query) async {
    try {
      final response =
          await _client.get('/search${type.endpoint()}?query=$query');
      final result = (response.data['results'] as List)
          .map(
            (e) => FilmModel.fromJson(e),
          )
          .toList();
      return result;
    } catch (e) {
      throw DatasourceException();
    }
  }
}
