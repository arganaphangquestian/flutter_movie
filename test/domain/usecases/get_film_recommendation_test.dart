import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moviex/domain/usecases/get_film_recommendation.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

import '../../fake/data.dart';
import '../../utils/helper.mocks.dart';

void main() {
  late GetFilmRecommendation usecase;
  late MockFilmRepository mock;

  setUp(() {
    mock = MockFilmRepository();
    usecase = GetFilmRecommendation(mock);
  });
  group('Movie', () {
    test('should success', () async {
      when(mock.getRecommendations(any, any)).thenAnswer(
        (_) async => RemoteState.success(data: [moviefilm]),
      );
      (await usecase.execute(FilmType.movie, 1)).maybeWhen(
        orElse: () {
          expect(true, false);
        },
        success: (value) {
          expect(value, [moviefilm]);
        },
        error: (message) {
          expect(message, null);
        },
      );
    });
  });
  group('TV', () {
    test('should success', () async {
      when(mock.getRecommendations(any, any)).thenAnswer(
        (_) async => RemoteState.success(data: [tvfilm]),
      );
      (await usecase.execute(FilmType.tv, 1)).maybeWhen(
        orElse: () {
          expect(true, false);
        },
        success: (value) {
          expect(value, [tvfilm]);
        },
        error: (message) {
          expect(message, null);
        },
      );
    });
  });
}
