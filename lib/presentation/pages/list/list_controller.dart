import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/usecases/get_film_now_playing.dart';
import 'package:moviex/domain/usecases/get_film_popular.dart';
import 'package:moviex/domain/usecases/get_film_top_rated.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/view_state.dart';

class ListController extends GetxController {
  final _films = const ViewState<List<Film>>.initial().obs;
  ViewState<List<Film>> get films => _films.value;

  final GetFilmNowPlaying _nowPlayingUseCase;
  final GetFilmPopular _popularUseCase;
  final GetFilmTopRated _topRatedUseCase;
  ListController(
    this._nowPlayingUseCase,
    this._popularUseCase,
    this._topRatedUseCase,
  );

  void fetch(FilmListType listType, FilmType type) async {
    _films.value = const ViewState.loading();
    switch (listType) {
      case FilmListType.nowplaying:
        _fetchNowPlaying(type);
        return;
      case FilmListType.popular:
        _fetchPopular(type);
        return;
      case FilmListType.toprated:
        _fetchTopRated(type);
        return;
    }
  }

  _fetchNowPlaying(FilmType type) async {
    final result = await _nowPlayingUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        _films.value = ViewState.success(data: data);
      },
      error: (message) {
        _films.value = ViewState.error(message: message);
      },
    );
    update();
  }

  _fetchPopular(FilmType type) async {
    final result = await _popularUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        _films.value = ViewState.success(data: data);
      },
      error: (message) {
        _films.value = ViewState.error(message: message);
      },
    );
    update();
  }

  _fetchTopRated(FilmType type) async {
    final result = await _topRatedUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        _films.value = ViewState.success(data: data);
      },
      error: (message) {
        _films.value = ViewState.error(message: message);
      },
    );
    update();
  }
}
