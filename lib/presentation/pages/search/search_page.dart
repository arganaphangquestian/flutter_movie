import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/main_controller.dart';
import 'package:moviex/presentation/pages/detail/detail_page.dart';
import 'package:moviex/presentation/pages/detail/detail_page_argument.dart';
import 'package:moviex/presentation/widgets/list_error.dart';
import 'package:moviex/presentation/widgets/list_film.dart';
import 'package:moviex/presentation/widgets/no_connection.dart';
import 'package:skeletons/skeletons.dart';

import 'search_controller.dart';
import 'search_page_argument.dart';

class SearchPage extends GetView<SearchController> {
  static const routeName = '/search';
  final arg = (Get.arguments as SearchPageArgument);
  SearchPage({Key? key}) : super(key: key) {
    Get.reload<SearchController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _build(context)),
    );
  }

  Widget _build(BuildContext context) {
    final mainController = Get.find<MainController>();
    if (!mainController.getIsConnected) {
      return const NoConnection();
    }
    return Column(
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            controller: TextEditingController(text: controller.query),
            decoration: const InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(),
            ),
            onChanged: (newValue) {
              controller.setSearchText(arg.type, newValue);
            },
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: GetBuilder<SearchController>(builder: (c) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: c.films.value.maybeWhen(
                orElse: () => _buildError(context, 'Please input Search'),
                success: (films) => _buildSuccess(context, films),
                error: (message) => _buildError(
                  context,
                  controller.query.isEmpty ? 'Please input Search' : message,
                ),
                loading: () => _buildLoading(context),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildSuccess(BuildContext context, List<Film> films) {
    if (films.isEmpty) {
      return const ListError(message: 'Empty');
    }
    return ListFilm(
      films: films,
      onTap: (id) {
        Get.toNamed(
          DetailPage.routeName,
          arguments: DetailPageArgument(id, arg.type),
        );
      },
    );
  }

  Widget _buildLoading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SkeletonListView(),
    );
  }

  Widget _buildError(BuildContext context, String message) {
    return ListError(
      message: message,
    );
  }
}
