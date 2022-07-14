import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class RemoveWatchlist {
  final FilmRepository repo;

  RemoveWatchlist(this.repo);

  Future<RemoteState<bool>> execute(FilmType type, int id) async {
    return await repo.removeWatchlist(type, id);
  }
}
