import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moviex/domain/usecases/get_watchlist.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/remote_state.dart';

import '../../fake/data.dart';
import '../../utils/helper.mocks.dart';

void main() {
  late GetWatchlist usecase;
  late MockFilmRepository mock;

  setUp(() {
    mock = MockFilmRepository();
    usecase = GetWatchlist(mock);
  });
  group('Movie', () {
    test('should success', () async {
      when(mock.getWatchlist(any)).thenAnswer(
        (_) async => RemoteState.success(data: [moviefilm]),
      );
      (await usecase.execute(FilmType.movie)).maybeWhen(
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
      when(mock.getWatchlist(any)).thenAnswer(
        (_) async => RemoteState.success(data: [tvfilm]),
      );
      (await usecase.execute(FilmType.tv)).maybeWhen(
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
