import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class SearchFilm {
  final FilmRepository repo;

  SearchFilm(this.repo);

  Future<RemoteState<List<Film>>> execute(FilmType type, String query) async {
    return await repo.search(type, query);
  }
}
