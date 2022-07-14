import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class GetFilmPopular {
  final FilmRepository repo;

  GetFilmPopular(this.repo);

  Future<RemoteState<List<Film>>> execute(FilmType type) async {
    return await repo.getPopular(type);
  }
}
