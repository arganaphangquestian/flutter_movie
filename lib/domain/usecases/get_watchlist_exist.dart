import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class GetWatchlistExist {
  final FilmRepository repo;

  GetWatchlistExist(this.repo);

  Future<RemoteState<bool>> execute(FilmType type, int id) async {
    return await repo.getExistWatchlist(type, id);
  }
}
