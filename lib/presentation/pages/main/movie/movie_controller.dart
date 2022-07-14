import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/usecases/get_film_now_playing.dart';
import 'package:moviex/domain/usecases/get_film_popular.dart';
import 'package:moviex/domain/usecases/get_film_top_rated.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/view_state.dart';

class MovieItem {
  final FilmListType type;
  final ViewState<List<Film>> data;

  MovieItem(this.type, this.data);
}

class MovieController extends GetxController {
  var lists = [
    MovieItem(
      FilmListType.nowplaying,
      const ViewState<List<Film>>.initial(),
    ),
    MovieItem(
      FilmListType.popular,
      const ViewState<List<Film>>.initial(),
    ),
    MovieItem(
      FilmListType.toprated,
      const ViewState<List<Film>>.initial(),
    ),
  ].obs;

  final GetFilmNowPlaying _nowPlayingUseCase;
  final GetFilmPopular _popularUseCase;
  final GetFilmTopRated _topRatedUseCase;

  MovieController(
    this._nowPlayingUseCase,
    this._popularUseCase,
    this._topRatedUseCase,
  );

  fetch() async {
    const type = FilmType.movie;
    _fetchNowPlaying(type);
    _fetchPopular(type);
    _fetchTopRated(type);
  }

  _fetchNowPlaying(FilmType type) async {
    final result = await _nowPlayingUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        lists.value = lists.map((list) {
          if (list.type == FilmListType.nowplaying) {
            return MovieItem(
              list.type,
              ViewState.success(data: data),
            );
          }
          return MovieItem(list.type, list.data);
        }).toList();
      },
      error: (message) {
        lists.value = lists.map((list) {
          if (list.type == FilmListType.nowplaying) {
            return MovieItem(
              list.type,
              ViewState.error(message: message),
            );
          }
          return MovieItem(list.type, list.data);
        }).toList();
      },
    );
    update();
  }

  _fetchPopular(FilmType type) async {
    final result = await _popularUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        lists.value = lists.map((list) {
          if (list.type == FilmListType.popular) {
            return MovieItem(
              list.type,
              ViewState.success(data: data),
            );
          }
          return MovieItem(list.type, list.data);
        }).toList();
      },
      error: (message) {
        lists.value = lists.map((list) {
          if (list.type == FilmListType.popular) {
            return MovieItem(
              list.type,
              ViewState.error(message: message),
            );
          }
          return MovieItem(list.type, list.data);
        }).toList();
      },
    );
    update();
  }

  _fetchTopRated(FilmType type) async {
    final result = await _topRatedUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        lists.value = lists.map((list) {
          if (list.type == FilmListType.toprated) {
            return MovieItem(
              list.type,
              ViewState.success(data: data),
            );
          }
          return MovieItem(list.type, list.data);
        }).toList();
      },
      error: (message) {
        lists.value = lists.map((list) {
          if (list.type == FilmListType.toprated) {
            return MovieItem(
              list.type,
              ViewState.error(message: message),
            );
          }
          return MovieItem(list.type, list.data);
        }).toList();
      },
    );
    update();
  }
}
