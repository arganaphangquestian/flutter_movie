import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

abstract class FilmRepository {
  // Film
  Future<RemoteState<List<Film>>> getNowPlaying(FilmType type);
  Future<RemoteState<List<Film>>> getPopular(FilmType type);
  Future<RemoteState<List<Film>>> getTopRated(FilmType type);
  Future<RemoteState<Film>> getDetail(FilmType type, int id);
  Future<RemoteState<List<Film>>> getRecommendations(FilmType type, int id);
  Future<RemoteState<List<Film>>> search(FilmType type, String query);
  // Watchlist
  Future<RemoteState<List<Film>>> getWatchlist(FilmType type);
  Future<RemoteState<bool>> addWatchlist(FilmType type, Film film);
  Future<RemoteState<bool>> getExistWatchlist(FilmType type, int id);
  Future<RemoteState<bool>> removeWatchlist(FilmType type, int id);
}
