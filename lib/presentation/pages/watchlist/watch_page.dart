import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/presentation/pages/detail/detail_page.dart';
import 'package:moviex/presentation/pages/detail/detail_page_argument.dart';
import 'package:moviex/presentation/widgets/list_film.dart';
import 'package:moviex/presentation/widgets/list_error.dart';
import 'package:skeletons/skeletons.dart';

import 'watch_controller.dart';
import 'watch_page_argument.dart';

class WatchlistPage extends GetView<WatchController> {
  static const routeName = '/watchlist';
  final arg = (Get.arguments as WatchlistPageArgument);

  WatchlistPage({Key? key}) : super(key: key) {
    Future.microtask(() {
      controller.fetch(arg.type);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${arg.type} - Watchlist'),
      ),
      body: GetBuilder<WatchController>(
        builder: (c) => RefreshIndicator(
          onRefresh: () async {
            c.fetch(arg.type);
          },
          child: c.films.maybeWhen(
            loading: () => _buildLoading(context),
            success: (tvs) => _buildSuccess(context, tvs),
            error: (error) => Center(child: Text(error)),
            orElse: () => const SizedBox(),
          ),
        ),
      ),
    );
  }

  Widget _buildLoading(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SkeletonListView(),
    );
  }

  Widget _buildSuccess(BuildContext ctx, List<Film> films) {
    if (films.isEmpty) {
      return const ListError(message: 'Empty');
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListFilm(
        films: films,
        onTap: (id) {
          Get.toNamed(
            DetailPage.routeName,
            arguments: DetailPageArgument(id, arg.type),
          );
        },
      ),
    );
  }
}
