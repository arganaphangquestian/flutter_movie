import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviex/presentation/pages/watchlist/watch_page.dart';
import 'package:moviex/presentation/pages/watchlist/watch_page_argument.dart';
import 'package:moviex/utils/enum.dart';
import 'package:moviex/presentation/pages/search/search_page.dart';
import 'package:moviex/presentation/pages/search/search_page_argument.dart';

import 'movie/movie_screen.dart';
import 'tv/tv_screen.dart';

class Fragment {
  final String label;
  final Icon icon;
  final FilmType type;
  final Widget screen;

  Fragment(this.label, this.icon, this.type, this.screen);
}

class MainPage extends StatefulWidget {
  static const routeName = '/main';
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Fragment> _fragments = [
    Fragment(
      'Movie',
      const Icon(
        Icons.movie,
      ),
      FilmType.movie,
      MovieScreen(),
    ),
    Fragment(
      'TV',
      const Icon(
        Icons.tv,
      ),
      FilmType.tv,
      TVScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_fragments[_currentIndex].label),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(
                SearchPage.routeName,
                arguments: SearchPageArgument(
                  _fragments[_currentIndex].type,
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(
                WatchlistPage.routeName,
                arguments: WatchlistPageArgument(
                  _fragments[_currentIndex].type,
                ),
              );
            },
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        onTap: (idx) {
          setState(() {
            _currentIndex = idx;
          });
        },
        items: _fragments
            .map((e) => BottomNavigationBarItem(
                  icon: e.icon,
                  label: e.label,
                ))
            .toList(),
      ),
      body: SafeArea(child: _fragments[_currentIndex].screen),
    );
  }
}
