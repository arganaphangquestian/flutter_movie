import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utils/enum.dart';
part 'film.freezed.dart';

@freezed
class Film with _$Film {
  factory Film({
    required int id,
    required String name,
    required double voteAverage,
    required String posterPath,
    required String overview,
    required FilmType type,
  }) = _Film;
}
