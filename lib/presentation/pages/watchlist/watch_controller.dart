import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/usecases/get_watchlist.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/view_state.dart';

class WatchController extends GetxController {
  final _films = const ViewState<List<Film>>.initial().obs;
  ViewState<List<Film>> get films => _films.value;

  final GetWatchlist _watchlist;
  WatchController(
    this._watchlist,
  );

  fetch(FilmType type) async {
    final result = await _watchlist.execute(type);
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
