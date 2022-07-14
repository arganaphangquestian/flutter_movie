import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moviex/data/repositories/film_repository_impl.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/exception.dart';

import '../../fake/data.dart';
import '../../utils/helper.mocks.dart';

void main() {
  late FilmRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    repository = FilmRepositoryImpl(
      mockRemoteDataSource,
      mockLocalDataSource,
    );
  });

  group('Now Playing', () {
    group('Movies', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getNowPlaying(FilmType.movie)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getNowPlaying(FilmType.movie);
          verify(mockRemoteDataSource.getNowPlaying(FilmType.movie));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [moviefilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getNowPlaying(FilmType.movie)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getNowPlaying(FilmType.movie);
          verify(mockRemoteDataSource.getNowPlaying(FilmType.movie));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getNowPlaying(FilmType.tv)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getNowPlaying(FilmType.tv);
          verify(mockRemoteDataSource.getNowPlaying(FilmType.tv));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [tvfilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getNowPlaying(FilmType.tv)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getNowPlaying(FilmType.tv);
          verify(mockRemoteDataSource.getNowPlaying(FilmType.tv));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Popular', () {
    group('Movies', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getPopular(FilmType.movie)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getPopular(FilmType.movie);
          verify(mockRemoteDataSource.getPopular(FilmType.movie));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [moviefilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getPopular(FilmType.movie)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getPopular(FilmType.movie);
          verify(mockRemoteDataSource.getPopular(FilmType.movie));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getPopular(FilmType.tv)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getPopular(FilmType.tv);
          verify(mockRemoteDataSource.getPopular(FilmType.tv));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [tvfilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getPopular(FilmType.tv)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getPopular(FilmType.tv);
          verify(mockRemoteDataSource.getPopular(FilmType.tv));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Top Rated', () {
    group('Movies', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getTopRated(FilmType.movie)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getTopRated(FilmType.movie);
          verify(mockRemoteDataSource.getTopRated(FilmType.movie));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [moviefilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getTopRated(FilmType.movie)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getTopRated(FilmType.movie);
          verify(mockRemoteDataSource.getTopRated(FilmType.movie));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getTopRated(FilmType.tv)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getTopRated(FilmType.tv);
          verify(mockRemoteDataSource.getTopRated(FilmType.tv));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [tvfilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getTopRated(FilmType.tv)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getTopRated(FilmType.tv);
          verify(mockRemoteDataSource.getTopRated(FilmType.tv));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Detail', () {
    group('Movies', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getDetail(FilmType.movie, 1)).thenAnswer(
            (_) async => model,
          );
          final result = await repository.getDetail(FilmType.movie, 1);
          verify(mockRemoteDataSource.getDetail(FilmType.movie, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, moviefilm);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getDetail(FilmType.movie, 1)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getDetail(FilmType.movie, 1);
          verify(mockRemoteDataSource.getDetail(FilmType.movie, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getDetail(FilmType.tv, 1)).thenAnswer(
            (_) async => model,
          );
          final result = await repository.getDetail(FilmType.tv, 1);
          verify(mockRemoteDataSource.getDetail(FilmType.tv, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, tvfilm);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getDetail(FilmType.tv, 1)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getDetail(FilmType.tv, 1);
          verify(mockRemoteDataSource.getDetail(FilmType.tv, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Recommendation', () {
    group('Movies', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getRecommendations(FilmType.movie, 1))
              .thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getRecommendations(FilmType.movie, 1);
          verify(mockRemoteDataSource.getRecommendations(FilmType.movie, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [moviefilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getRecommendations(FilmType.movie, 1))
              .thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getRecommendations(FilmType.movie, 1);
          verify(mockRemoteDataSource.getRecommendations(FilmType.movie, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getRecommendations(FilmType.tv, 1))
              .thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getRecommendations(FilmType.tv, 1);
          verify(mockRemoteDataSource.getRecommendations(FilmType.tv, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [tvfilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.getRecommendations(FilmType.tv, 1))
              .thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getRecommendations(FilmType.tv, 1);
          verify(mockRemoteDataSource.getRecommendations(FilmType.tv, 1));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Search', () {
    group('Movies', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.search(FilmType.movie, '')).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.search(FilmType.movie, '');
          verify(mockRemoteDataSource.search(FilmType.movie, ''));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [moviefilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.search(FilmType.movie, '')).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.search(FilmType.movie, '');
          verify(mockRemoteDataSource.search(FilmType.movie, ''));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.search(FilmType.tv, '')).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.search(FilmType.tv, '');
          verify(mockRemoteDataSource.search(FilmType.tv, ''));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [tvfilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should return error message when the call to remote data source is fail',
        () async {
          when(mockRemoteDataSource.search(FilmType.tv, '')).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.search(FilmType.tv, '');
          verify(mockRemoteDataSource.search(FilmType.tv, ''));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Add Watchlist', () {
    group('Movies', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.addWatchlist(any, any)).thenAnswer(
            (_) async => true,
          );
          final result = await repository.addWatchlist(FilmType.movie, tvfilm);
          verify(mockLocalDataSource.addWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, true);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.addWatchlist(any, any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.addWatchlist(FilmType.movie, tvfilm);
          verify(mockLocalDataSource.addWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.addWatchlist(any, any)).thenAnswer(
            (_) async => true,
          );
          final result = await repository.addWatchlist(FilmType.tv, tvfilm);
          verify(mockLocalDataSource.addWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, true);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.addWatchlist(any, any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.addWatchlist(FilmType.tv, tvfilm);
          verify(mockLocalDataSource.addWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Get Watchlist', () {
    group('Movies', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.getWatchlist(any)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getWatchlist(FilmType.movie);
          verify(mockLocalDataSource.getWatchlist(any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [moviefilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.getWatchlist(any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getWatchlist(FilmType.movie);
          verify(mockLocalDataSource.getWatchlist(any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.getWatchlist(any)).thenAnswer(
            (_) async => [model],
          );
          final result = await repository.getWatchlist(FilmType.tv);
          verify(mockLocalDataSource.getWatchlist(any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, [tvfilm]);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.getWatchlist(any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getWatchlist(FilmType.tv);
          verify(mockLocalDataSource.getWatchlist(any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.addWatchlist(any, any)).thenAnswer(
            (_) async => true,
          );
          final result = await repository.addWatchlist(FilmType.tv, tvfilm);
          verify(mockLocalDataSource.addWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, true);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.addWatchlist(any, any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.addWatchlist(FilmType.tv, tvfilm);
          verify(mockLocalDataSource.addWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Get Exist Watchlist', () {
    group('Movies', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.getWatchlistExist(any, any)).thenAnswer(
            (_) async => true,
          );
          final result = await repository.getExistWatchlist(FilmType.movie, 1);
          verify(mockLocalDataSource.getWatchlistExist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, true);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.getWatchlistExist(any, any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getExistWatchlist(FilmType.movie, 1);
          verify(mockLocalDataSource.getWatchlistExist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.getWatchlistExist(any, any)).thenAnswer(
            (_) async => true,
          );
          final result = await repository.getExistWatchlist(FilmType.tv, 1);
          verify(mockLocalDataSource.getWatchlistExist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, true);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.getWatchlistExist(any, any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.getExistWatchlist(FilmType.tv, 1);
          verify(mockLocalDataSource.getWatchlistExist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
  group('Remove Watchlist', () {
    group('Movies', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.removeWatchlist(any, any)).thenAnswer(
            (_) async => true,
          );
          final result = await repository.removeWatchlist(FilmType.movie, 1);
          verify(mockLocalDataSource.removeWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, true);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.removeWatchlist(any, any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.removeWatchlist(FilmType.movie, 1);
          verify(mockLocalDataSource.removeWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
    group('TV', () {
      // Test Success
      test(
        'should successful',
        () async {
          when(mockLocalDataSource.removeWatchlist(any, any)).thenAnswer(
            (_) async => true,
          );
          final result = await repository.removeWatchlist(FilmType.tv, 1);
          verify(mockLocalDataSource.removeWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            success: (data) {
              expect(data, true);
            },
          );
        },
      );
      // Test Failure
      test(
        'should fail',
        () async {
          when(mockLocalDataSource.removeWatchlist(any, any)).thenThrow(
            DatasourceException(message: 'Error'),
          );
          final result = await repository.removeWatchlist(FilmType.tv, 1);
          verify(mockLocalDataSource.removeWatchlist(any, any));
          result.maybeWhen(
            orElse: () {
              expect(true, false);
            },
            error: (message) {
              expect(message, 'Error');
            },
          );
        },
      );
    });
  });
}
