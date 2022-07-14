import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class GetFilmNowPlaying {
  final FilmRepository repo;

  GetFilmNowPlaying(this.repo);

  Future<RemoteState<List<Film>>> execute(FilmType type) async {
    return await repo.getNowPlaying(type);
  }
}
