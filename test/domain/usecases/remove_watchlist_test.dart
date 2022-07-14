import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moviex/domain/usecases/remove_watchlist.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

import '../../utils/helper.mocks.dart';

void main() {
  late RemoveWatchlist usecase;
  late MockFilmRepository mock;

  setUp(() {
    mock = MockFilmRepository();
    usecase = RemoveWatchlist(mock);
  });
  group('Movie', () {
    test('should success', () async {
      when(mock.removeWatchlist(any, any)).thenAnswer(
        (_) async => const RemoteState.success(data: true),
      );
      (await usecase.execute(FilmType.movie, 1)).maybeWhen(
        orElse: () {
          expect(true, false);
        },
        success: (value) {
          expect(value, true);
        },
        error: (message) {
          expect(message, null);
        },
      );
    });
  });
  group('TV', () {
    test('should success', () async {
      when(mock.removeWatchlist(any, any)).thenAnswer(
        (_) async => const RemoteState.success(data: true),
      );
      (await usecase.execute(FilmType.tv, 1)).maybeWhen(
        orElse: () {
          expect(true, false);
        },
        success: (value) {
          expect(value, true);
        },
        error: (message) {
          expect(message, null);
        },
      );
    });
  });
}
