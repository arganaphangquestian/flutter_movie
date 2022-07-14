import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class AddWatchlist {
  final FilmRepository repo;

  AddWatchlist(this.repo);

  Future<RemoteState<bool>> execute(FilmType type, Film film) async {
    return await repo.addWatchlist(type, film);
  }
}
