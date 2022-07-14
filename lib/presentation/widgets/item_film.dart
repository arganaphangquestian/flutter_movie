import 'package:flutter/material.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/utils/constant.dart';
import 'package:skeletons/skeletons.dart';

class ItemFilm extends StatelessWidget {
  final Film film;
  final _width = 120.0;
  final _height = 80.0;
  final Function(int) onTap;
  const ItemFilm({Key? key, required this.film, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        onTap(film.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildThumbnail(context),
              const SizedBox(width: 8),
              _buildDescription(context)
            ],
          ),
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
        fit: BoxFit.cover,
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

  Widget _buildDescription(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              film.name,
              style: Theme.of(context).textTheme.subtitle1,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Text(
                film.overview,
                style: Theme.of(context).textTheme.caption,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
            _buildRating(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRating(BuildContext context) {
    return Row(
      children: [
        ...List.generate(5, (i) => i + 1)
            .map((i) => Icon(
                  i <= (film.voteAverage / 2).round()
                      ? Icons.star
                      : Icons.star_border,
                  color: Colors.yellow,
                  size: 14,
                ))
            .toList(),
        const SizedBox(width: 4),
        Text(
          '${film.voteAverage}',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
