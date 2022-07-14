import 'package:flutter_test/flutter_test.dart';
import 'package:moviex/utils/enum.dart';

void main() {
  test('Movie should success', () {
    expect(FilmType.movie.toString(), 'Movie');
  });
  test('TV should success', () {
    expect(FilmType.tv.toString(), 'TV');
  });
  test('Now Playing should success', () {
    expect(FilmListType.nowplaying.toString(), 'Now Playing');
  });
  test('Popular should success', () {
    expect(FilmListType.popular.toString(), 'Popular');
  });
  test('Top Rated should success', () {
    expect(FilmListType.toprated.toString(), 'Top Rated');
  });
}
