import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/main_controller.dart';
import 'package:moviex/presentation/widgets/card_carousel.dart';
import 'package:moviex/presentation/widgets/card_error.dart';
import 'package:moviex/presentation/widgets/card_skeleton.dart';
import 'package:moviex/presentation/widgets/no_connection.dart';
import 'package:moviex/utils/constant.dart';
import 'package:skeletons/skeletons.dart';

import 'detail_controller.dart';
import 'detail_page_argument.dart';

class DetailPage extends GetView<DetailController> {
  static const routeName = '/detail';

  final arg = (Get.arguments as DetailPageArgument);

  DetailPage({Key? key}) : super(key: key) {
    Future.microtask(() {
      controller.fetch(arg.type, arg.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _build(context),
    );
  }

  Widget _build(BuildContext context) {
    return Obx(() => RefreshIndicator(
          onRefresh: () async {
            controller.fetch(arg.type, arg.id);
          },
          child: !Get.find<MainController>().getIsConnected
              ? const NoConnection()
              : controller.film.maybeWhen(
                  loading: () => _buildLoading(context),
                  success: (data) => _buildSuccess(context, data),
                  error: (message) => _buildError(context, message),
                  orElse: () => _buildLoading(context),
                ),
        ));
  }

  Widget _buildLoading(BuildContext context) {
    return ListView(
      children: [
        SkeletonAvatar(
          style: SkeletonAvatarStyle(
            height: MediaQuery.of(context).size.height * .65,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        SkeletonParagraph(),
        SkeletonParagraph(),
        SkeletonParagraph(),
        SkeletonParagraph(),
        SkeletonParagraph(),
      ],
    );
  }

  String _getImagePath(String path) {
    if (path.isNotEmpty) {
      return '$largeImageUrl$path';
    }
    return 'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/certificate_logo.png';
  }

  Widget _buildSuccess(BuildContext context, Film data) {
    return Container(
      color: Theme.of(context).colorScheme.background.withOpacity(.9),
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              _getImagePath(data.posterPath),
              fit: data.posterPath.isNotEmpty ? BoxFit.cover : BoxFit.contain,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              loadingBuilder: (ctx, child, loading) {
                if (loading == null) return child;
                return SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                );
              },
              errorBuilder: (_, __, ___) {
                return const SizedBox();
              },
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .65,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Container(
                    color: Theme.of(context)
                        .colorScheme
                        .background
                        .withOpacity(.9),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 5,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            data.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (!controller.isWatchlist.value) {
                                controller.addWatchlist(arg.type, data);
                              } else {
                                controller.removeWatchlist(arg.type, arg.id);
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      controller.isWatchlist.value
                                          ? Icons.check
                                          : Icons.add,
                                      color: controller.isWatchlist.value
                                          ? Colors.green
                                          : Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      controller.isWatchlist.value
                                          ? 'Added to watchlist'
                                          : 'Add to watchlist',
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          _buildRating(context, data.voteAverage),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text('Overview'),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(data.overview == ''
                              ? '(No overview)'
                              : data.overview),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text('Recommendation'),
                          const SizedBox(
                            height: 16,
                          ),
                          controller.recommendations.maybeWhen(
                            success: (films) => CardCarousel(
                              films: films,
                              onTap: (id) {
                                Get.offAndToNamed(
                                  DetailPage.routeName,
                                  arguments: DetailPageArgument(id, arg.type),
                                );
                              },
                            ),
                            error: (error) => CardError(message: error),
                            orElse: () => const CardSkeleton(),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildError(BuildContext context, String message) {
    return Center(
      child: Text(message),
    );
  }

  Widget _buildRating(BuildContext context, double rating) {
    return Row(
      children: [
        ...List.generate(5, (i) => i + 1)
            .map((i) => Icon(
                  i <= (rating / 2).round() ? Icons.star : Icons.star_border,
                  color: Colors.yellow,
                  size: 14,
                ))
            .toList(),
        const SizedBox(width: 4),
        Text(
          '$rating',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
