import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:moviex/data/datasources/local_data_source.dart';
import 'package:moviex/data/models/film_local.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/exception.dart';

import '../../fake/data.dart';
import '../../utils/helper.mocks.dart';

void main() {
  late Box box;
  late LocalDataSourceImpl dataSource;

  setUp(() {
    box = MockBox();
    dataSource = LocalDataSourceImpl(box);
  });
  group('Save Watchlist', () {
    group('Movie', () {
      test('should success', () async {
        when(box.put(any, any)).thenAnswer((_) async => 1);
        final result = await dataSource.addWatchlist(FilmType.movie, model);
        expect(result, true);
      });
      test('should failed', () async {
        when(box.put(any, any)).thenThrow(Exception());
        final message = dataSource.addWatchlist(FilmType.movie, model);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        when(box.put(any, any)).thenAnswer((_) async => 1);
        final result = await dataSource.addWatchlist(FilmType.tv, model);
        expect(result, true);
      });
      test('should failed', () async {
        when(box.put(any, any)).thenThrow(Exception());
        final message = dataSource.addWatchlist(FilmType.tv, model);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Get Watchlist', () {
    group('Movie', () {
      test('should success', () async {
        when(box.values).thenAnswer((_) => [
              FilmLocal()
                ..id = model.id
                ..name = model.name ?? model.title ?? ''
                ..overview = model.overview
                ..posterPath = model.posterPath
                ..voteAverage = model.voteAverage
                ..type = FilmType.movie.toString(),
            ]);
        final result = await dataSource.getWatchlist(FilmType.movie);
        expect(result, [model]);
      });
      test('should failed', () async {
        when(box.values).thenThrow(Exception());
        final message = dataSource.getWatchlist(FilmType.movie);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        when(box.values).thenAnswer((_) => [
              FilmLocal()
                ..id = model.id
                ..name = model.name ?? model.title ?? ''
                ..overview = model.overview
                ..posterPath = model.posterPath
                ..voteAverage = model.voteAverage
                ..type = FilmType.tv.toString(),
            ]);
        final result = await dataSource.getWatchlist(FilmType.tv);
        expect(result, [model]);
      });
      test('should failed', () async {
        when(box.values).thenThrow(Exception());
        final message = dataSource.getWatchlist(FilmType.tv);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Remove Watchlist', () {
    group('Movie', () {
      test('should success', () async {
        when(box.delete(any)).thenAnswer((_) async => 1);
        final result = await dataSource.removeWatchlist(FilmType.movie, 1);
        expect(result, true);
      });
      test('should failed', () async {
        when(box.delete(any)).thenThrow(Exception());
        final message = dataSource.removeWatchlist(FilmType.movie, 1);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        when(box.delete(any)).thenAnswer((_) async => 1);
        final result = await dataSource.removeWatchlist(FilmType.tv, 1);
        expect(result, true);
      });
      test('should failed', () async {
        when(box.delete(any)).thenThrow(Exception());
        final message = dataSource.removeWatchlist(FilmType.tv, 1);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Get Exist Watchlist', () {
    group('Movie', () {
      test('should success', () async {
        when(box.containsKey(any)).thenAnswer((_) => true);
        final result = await dataSource.getWatchlistExist(FilmType.movie, 1);
        expect(result, true);
      });
      test('should failed', () async {
        when(box.containsKey(any)).thenThrow(Exception());
        final message = dataSource.getWatchlistExist(FilmType.movie, 1);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        when(box.containsKey(any)).thenAnswer((_) => true);
        final result = await dataSource.getWatchlistExist(FilmType.tv, 1);
        expect(result, true);
      });
      test('should failed', () async {
        when(box.put(any, any)).thenThrow(Exception());
        final message = dataSource.getWatchlistExist(FilmType.tv, 1);
        expect(() => message, throwsA(isA<DatasourceException>()));
      });
    });
  });
}
