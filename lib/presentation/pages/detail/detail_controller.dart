import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/usecases/add_watchlist.dart';
import 'package:moviex/domain/usecases/get_film_detail.dart';
import 'package:moviex/domain/usecases/get_film_recommendation.dart';
import 'package:moviex/domain/usecases/get_watchlist_exist.dart';
import 'package:moviex/domain/usecases/remove_watchlist.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/view_state.dart';

class DetailController extends GetxController {
  final _film = const ViewState<Film>.initial().obs;
  ViewState<Film> get film => _film.value;
  final _recommendations = const ViewState<List<Film>>.initial().obs;
  ViewState<List<Film>> get recommendations => _recommendations.value;
  final isWatchlist = false.obs;
  final GetFilmDetail _detailUseCase;
  final GetFilmRecommendation _recommendationUseCase;
  final GetWatchlistExist _existUseCase;
  final AddWatchlist _addWatchlistUseCase;
  final RemoveWatchlist _removeWatchlistUseCase;

  DetailController(
    this._detailUseCase,
    this._recommendationUseCase,
    this._existUseCase,
    this._addWatchlistUseCase,
    this._removeWatchlistUseCase,
  );

  fetch(FilmType type, int id) async {
    _film.value = const ViewState.loading();
    _recommendations.value = const ViewState.loading();
    update();
    final result = await _detailUseCase.execute(type, id);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        _film.value = ViewState.success(data: data);
      },
      error: (message) {
        _film.value = ViewState.error(message: message);
      },
    );
    final resultRecommendation = await _recommendationUseCase.execute(type, id);
    resultRecommendation.maybeWhen(
      orElse: () {},
      success: (data) {
        _recommendations.value = ViewState.success(data: data);
      },
      error: (message) {
        _recommendations.value = ViewState.error(message: message);
      },
    );
    final isTrue = await _existUseCase.execute(type, id);
    isTrue.maybeWhen(
      orElse: () {},
      success: (data) {
        isWatchlist.value = data;
      },
    );
    update();
  }

  addWatchlist(FilmType type, Film film) async {
    final result = await _addWatchlistUseCase.execute(type, film);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        isWatchlist.value = true;
      },
    );
    update();
  }

  removeWatchlist(FilmType type, int id) async {
    final result = await _removeWatchlistUseCase.execute(type, id);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        isWatchlist.value = false;
      },
    );
    update();
  }
}
