import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moviex/data/datasources/local_data_source.dart';
import 'package:moviex/data/datasources/remote_data_source.dart';
import 'package:moviex/data/models/film_local.dart';
import 'package:moviex/data/repositories/film_repository_impl.dart';
import 'package:moviex/domain/usecases/add_watchlist.dart';
import 'package:moviex/domain/usecases/get_film_detail.dart';
import 'package:moviex/domain/usecases/get_film_now_playing.dart';
import 'package:moviex/domain/usecases/get_film_popular.dart';
import 'package:moviex/domain/usecases/get_film_recommendation.dart';
import 'package:moviex/domain/usecases/get_film_top_rated.dart';
import 'package:moviex/domain/usecases/get_watchlist.dart';
import 'package:moviex/domain/usecases/get_watchlist_exist.dart';
import 'package:moviex/domain/usecases/remove_watchlist.dart';
import 'package:moviex/domain/usecases/search_film.dart';
import 'package:moviex/main_controller.dart';
import 'package:moviex/presentation/pages/detail/detail_controller.dart';
import 'package:moviex/presentation/pages/list/list_controller.dart';
import 'package:moviex/presentation/pages/main/movie/movie_controller.dart';
import 'package:moviex/presentation/pages/main/tv/tv_controller.dart';
import 'package:moviex/presentation/pages/search/search_controller.dart';
import 'package:moviex/presentation/pages/watchlist/watch_controller.dart';

import 'http_client.dart';

Future<void> setup() async {
  // Initialize Hive Local Database
  await Hive.initFlutter();
  // Initialize Tv Adapter
  Hive.registerAdapter(
    FilmLocalAdapter(),
  );
  // Global State Management
  Get.put<MainController>(MainController());

  // Initialize Data Source
  Get.lazyPut<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      httpClient(),
    ),
  );
  Get.lazyPut<LocalDataSource>(
    () => LocalDataSourceImpl(
      Hive.box('watchlist'),
    ),
  );
  // Initialize Repository
  Get.lazyPut<FilmRepositoryImpl>(
    () => FilmRepositoryImpl(
      Get.find<RemoteDataSource>(),
      Get.find<LocalDataSource>(),
    ),
  );
  // Initialize Use Case
  Get.lazyPut<GetFilmNowPlaying>(
    () => GetFilmNowPlaying(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<GetFilmPopular>(
    () => GetFilmPopular(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<GetFilmTopRated>(
    () => GetFilmTopRated(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<GetFilmRecommendation>(
    () => GetFilmRecommendation(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<GetFilmDetail>(
    () => GetFilmDetail(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<SearchFilm>(
    () => SearchFilm(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<GetWatchlist>(
    () => GetWatchlist(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<GetWatchlistExist>(
    () => GetWatchlistExist(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<AddWatchlist>(
    () => AddWatchlist(
      Get.find<FilmRepositoryImpl>(),
    ),
  );
  Get.lazyPut<RemoveWatchlist>(
    () => RemoveWatchlist(
      Get.find<FilmRepositoryImpl>(),
    ),
  );

  // Controller
  Get.lazyPut<MovieController>(
    () => MovieController(
      Get.find<GetFilmNowPlaying>(),
      Get.find<GetFilmPopular>(),
      Get.find<GetFilmTopRated>(),
    ),
  );
  Get.lazyPut<TVController>(
    () => TVController(
      Get.find<GetFilmNowPlaying>(),
      Get.find<GetFilmPopular>(),
      Get.find<GetFilmTopRated>(),
    ),
  );
  Get.lazyPut<SearchController>(
    () => SearchController(
      Get.find<SearchFilm>(),
    ),
  );
  Get.lazyPut<WatchController>(
    () => WatchController(
      Get.find<GetWatchlist>(),
    ),
    fenix: true,
  );
  Get.lazyPut<ListController>(
    () => ListController(
      Get.find<GetFilmNowPlaying>(),
      Get.find<GetFilmPopular>(),
      Get.find<GetFilmTopRated>(),
    ),
  );
  Get.lazyPut<DetailController>(
    () => DetailController(
      Get.find<GetFilmDetail>(),
      Get.find<GetFilmRecommendation>(),
      Get.find<GetWatchlistExist>(),
      Get.find<AddWatchlist>(),
      Get.find<RemoveWatchlist>(),
    ),
    fenix: true,
  );
}
