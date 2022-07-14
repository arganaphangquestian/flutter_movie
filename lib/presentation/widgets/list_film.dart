import 'package:flutter/material.dart';
import 'package:moviex/domain/entities/film.dart';
import 'package:moviex/presentation/widgets/item_film.dart';

class ListFilm extends StatelessWidget {
  final List<Film> films;
  final Function(int) onTap;
  const ListFilm({
    Key? key,
    required this.films,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, idx) {
              return ItemFilm(
                film: films[idx],
                onTap: onTap,
              );
            },
            separatorBuilder: (ctx, idx) {
              return const SizedBox(height: 16);
            },
            itemCount: films.length,
          ),
        ],
      ),
    );
  }
}
