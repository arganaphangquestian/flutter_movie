import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/presentation/pages/detail/detail_page.dart';
import 'package:moviex/presentation/pages/detail/detail_page_argument.dart';
import 'package:moviex/presentation/widgets/card_carousel.dart';
import 'package:moviex/presentation/widgets/card_error.dart';
import 'package:moviex/presentation/widgets/card_skeleton.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/presentation/pages/list/list_page.dart';
import 'package:moviex/presentation/pages/list/list_page_argument.dart';

import 'tv_controller.dart';

class TVScreen extends GetView<TVController> {
  TVScreen({Key? key}) : super(key: key) {
    controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        controller.fetch();
      },
      child: GetBuilder<TVController>(builder: (c) {
        return SingleChildScrollView(
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, idx) {
                    return Column(
                      children: [
                        _buildLabel(
                          context,
                          c.lists[idx].type,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        c.lists[idx].data.value.maybeWhen(orElse: () {
                          return const CardSkeleton();
                        }, success: (data) {
                          return _buildSuccess(context, data);
                        }, error: (message) {
                          return CardError(message: message);
                        })
                      ],
                    );
                  },
                  separatorBuilder: (ctx, idx) {
                    return const SizedBox(
                      height: 32,
                    );
                  },
                  itemCount: c.lists.length,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildSuccess(BuildContext context, List<Film> films) {
    return CardCarousel(
      films: films,
      onTap: (id) {
        Get.toNamed(
          DetailPage.routeName,
          arguments: DetailPageArgument(id, FilmType.tv),
        );
      },
    );
  }

  Widget _buildLabel(BuildContext context, FilmListType type) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(
            ListPage.routeName,
            arguments: ListPageArgument(FilmType.tv, type),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$type'),
            Row(
              children: [
                Text(
                  'View all',
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
