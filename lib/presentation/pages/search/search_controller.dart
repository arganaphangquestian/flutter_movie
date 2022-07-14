import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/usecases/search_film.dart';
import 'package:moviex/utils/debounce.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/view_state.dart';

class SearchController extends GetxController {
  final _debouncer = Debouncer(milliseconds: 500);
  final _query = ''.obs;
  String get query => _query.value;

  final films = const ViewState<List<Film>>.initial().obs;

  final SearchFilm _searchFilmUseCase;
  SearchController(this._searchFilmUseCase);

  setSearchText(FilmType type, String value) {
    _query.value = value;
    update();
    if (value.isNotEmpty) {
      _debouncer.run(() => _fetch(type, value));
    }
  }

  _fetch(FilmType type, String query) async {
    films.value = const ViewState.loading();
    update();
    final result = await _searchFilmUseCase.execute(type, query);
    result.maybeWhen(
      orElse: () {},
      success: (data) {
        films.value = ViewState.success(data: data);
      },
      error: (message) {
        films.value = ViewState.error(message: message);
      },
    );
    update();
  }
}
