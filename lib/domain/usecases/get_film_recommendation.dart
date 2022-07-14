import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/domain/repositories/film_repository.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

class GetFilmRecommendation {
  final FilmRepository repo;

  GetFilmRecommendation(this.repo);

  Future<RemoteState<List<Film>>> execute(FilmType type, int id) async {
    return await repo.getRecommendations(type, id);
  }
}
