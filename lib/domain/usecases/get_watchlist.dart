import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class GetWatchlist {
  final FilmRepository repo;

  GetWatchlist(this.repo);

  Future<RemoteState<List<Film>>> execute(FilmType type) async {
    return await repo.getWatchlist(type);
  }
}
