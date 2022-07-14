import 'package:flutter/material.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/utils/constant.dart';
import 'package:skeletons/skeletons.dart';

class CardFilm extends StatelessWidget {
  final Film film;
  final _width = 120.0;
  final _height = 180.0;
  final Function onTap;
  const CardFilm({
    Key? key,
    required this.film,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(film.id);
      },
      child: IntrinsicHeight(
        child: Stack(
          children: [
            _buildThumbnail(context),
            _buildOverlay(context),
            _buildTitle(context)
          ],
        ),
      ),
    );
  }

  String _getImagePath(String path) {
    if (path.isNotEmpty) {
      return '$imageUrl$path';
    }
    return 'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/new-ui-logo.png';
  }

  Widget _buildThumbnail(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        _getImagePath(film.posterPath),
        width: _width,
        height: _height,
        loadingBuilder: (ctx, child, loading) {
          if (loading == null) return child;
          return SizedBox(
            width: _width,
            height: _height,
            child: SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: _width,
                height: _height,
              ),
            ),
          );
        },
        errorBuilder: (ctx, obj, stackTrace) {
          return Container(
            width: _width,
            height: _height,
            color: Colors.grey,
          );
        },
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: _width,
        height: _height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black12,
              Colors.black12,
              Colors.black38,
              Colors.black87,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            film.name,
            style: Theme.of(context).textTheme.caption?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
            maxLines: 1,
            overflow: TextOverflow.clip,
          ),
        ),
      ),
    );
  }
}
