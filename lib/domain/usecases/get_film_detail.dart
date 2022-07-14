import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class GetFilmDetail {
  final FilmRepository repo;

  GetFilmDetail(this.repo);

  Future<RemoteState<Film>> execute(FilmType type, int id) async {
    return await repo.getDetail(type, id);
  }
}
