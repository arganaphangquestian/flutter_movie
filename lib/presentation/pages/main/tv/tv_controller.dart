import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/usecases/get_film_now_playing.dart';
import 'package:moviex/domain/usecases/get_film_popular.dart';
import 'package:moviex/domain/usecases/get_film_top_rated.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/view_state.dart';

class TVItem {
  final FilmListType type;
  final Rx<ViewState<List<Film>>> data;

  TVItem(this.type, this.data);
}

class TVController extends GetxController {
  final List<TVItem> lists = [
    TVItem(
      FilmListType.nowplaying,
      const ViewState<List<Film>>.initial().obs,
    ),
    TVItem(
      FilmListType.popular,
      const ViewState<List<Film>>.initial().obs,
    ),
    TVItem(
      FilmListType.toprated,
      const ViewState<List<Film>>.initial().obs,
    ),
  ];

  final GetFilmNowPlaying _nowPlayingUseCase;
  final GetFilmPopular _popularUseCase;
  final GetFilmTopRated _topRatedUseCase;

  TVController(
    this._nowPlayingUseCase,
    this._popularUseCase,
    this._topRatedUseCase,
  );

  fetch() async {
    const type = FilmType.tv;
    _fetchNowPlaying(type);
    _fetchPopular(type);
    _fetchTopRated(type);
  }

  _fetchNowPlaying(FilmType type) async {
    final result = await _nowPlayingUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        lists
            .firstWhere(
              (i) => i.type == FilmListType.nowplaying,
            )
            .data
            .value = ViewState.success(data: data);
      },
      error: (message) {
        lists
            .firstWhere(
              (i) => i.type == FilmListType.nowplaying,
            )
            .data
            .value = ViewState.error(message: message);
      },
    );
    update();
  }

  _fetchPopular(FilmType type) async {
    final result = await _popularUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        lists
            .firstWhere(
              (i) => i.type == FilmListType.popular,
            )
            .data
            .value = ViewState.success(data: data);
      },
      error: (message) {
        lists
            .firstWhere(
              (i) => i.type == FilmListType.popular,
            )
            .data
            .value = ViewState.error(message: message);
      },
    );
    update();
  }

  _fetchTopRated(FilmType type) async {
    final result = await _topRatedUseCase.execute(type);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        lists
            .firstWhere(
              (i) => i.type == FilmListType.toprated,
            )
            .data
            .value = ViewState.success(data: data);
      },
      error: (message) {
        lists
            .firstWhere(
              (i) => i.type == FilmListType.toprated,
            )
            .data
            .value = ViewState.error(message: message);
      },
    );
    update();
  }
}
