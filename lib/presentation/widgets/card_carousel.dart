import 'package:flutter/material.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/presentation/widgets/card_error.dart';
import 'package:moviex/presentation/widgets/card_film.dart';

class CardCarousel extends StatelessWidget {
  final List<Film> films;
  final Function(int id) onTap;
  const CardCarousel({
    Key? key,
    required this.films,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCarousel(context);
  }

  Widget _buildCarousel(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: _build(context),
    );
  }

  Widget _build(BuildContext context) {
    if (films.isEmpty) {
      return const CardError(message: 'Empty');
    }
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => _buildCard(context, index),
      separatorBuilder: (context, index) => const SizedBox(width: 16),
      itemCount: films.length,
    );
  }

  Widget _buildCard(BuildContext context, int index) {
    if (index == 0) {
      return Row(
        children: [
          const SizedBox(width: 16),
          CardFilm(
            film: films[index],
            onTap: onTap,
          ),
        ],
      );
    }
    if (index == films.length - 1) {
      return Row(
        children: [
          CardFilm(
            film: films[index],
            onTap: onTap,
          ),
          const SizedBox(width: 16),
        ],
      );
    }
    return CardFilm(
      film: films[index],
      onTap: onTap,
    );
  }
}
