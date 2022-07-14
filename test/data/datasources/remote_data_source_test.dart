import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:moviex/data/datasources/remote_data_source.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/utils/exception.dart';
import 'package:moviex/utils/http_client.dart';

import '../../fake/data.dart';
import '../../fake/response.dart';

void main() {
  final client = httpClient();

  group('Now Playing', () {
    group('Movie', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/now_playing',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getNowPlaying(FilmType.movie);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/now_playing',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/movie/now_playing',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getNowPlaying(FilmType.movie);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/airing_today',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getNowPlaying(FilmType.tv);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/airing_today',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/tv/airing_today',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getNowPlaying(FilmType.tv);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Popular', () {
    group('Movie', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/popular',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getPopular(FilmType.movie);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/popular',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/movie/popular',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getPopular(FilmType.movie);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/popular',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getPopular(FilmType.tv);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/popular',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/tv/popular',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getPopular(FilmType.tv);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Top Rated', () {
    group('Movie', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/top_rated',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getTopRated(FilmType.movie);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/top_rated',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/movie/top_rated',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getTopRated(FilmType.movie);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/top_rated',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getTopRated(FilmType.tv);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/top_rated',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/tv/top_rated',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getTopRated(FilmType.tv);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Recommendation', () {
    group('Movie', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/1/recommendations',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getRecommendations(FilmType.movie, 1);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/1/recommendations',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/movie/1/recommendations',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getRecommendations(FilmType.movie, 1);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/1/recommendations',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getRecommendations(FilmType.tv, 1);
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/1/recommendations',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/tv/1/recommendations',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getRecommendations(FilmType.tv, 1);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Search', () {
    group('Movie', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/search/movie?query=a',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.search(FilmType.movie, 'a');
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/search/movie?query=a',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/search/movie?query=a',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.search(FilmType.movie, 'a');
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/search/tv?query=a',
          (server) => server.reply(
            200,
            responses,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.search(FilmType.tv, 'a');
        expect(data, [model]);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/search/tv?query=a',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/search/tv?query=a',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.search(FilmType.tv, 'a');
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
  });
  group('Detail', () {
    group('Movie', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/1',
          (server) => server.reply(
            200,
            response,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getDetail(FilmType.movie, 1);
        expect(data, model);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/movie/1',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/movie/1',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getDetail(FilmType.movie, 1);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
    group('TV', () {
      test('should success', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/1',
          (server) => server.reply(
            200,
            response,
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = await dataSource.getDetail(FilmType.tv, 1);
        expect(data, model);
      });
      test('should fail', () async {
        final adapter = DioAdapter(dio: client);
        adapter.onGet(
          '/tv/1',
          (server) => server.throws(
            200,
            DioError(
              requestOptions: RequestOptions(
                path: '/tv/1',
              ),
            ),
          ),
        );
        var dataSource = RemoteDataSourceImpl(client);
        final data = dataSource.getDetail(FilmType.tv, 1);
        expect(() async => data, throwsA(isA<DatasourceException>()));
      });
    });
  });
}
