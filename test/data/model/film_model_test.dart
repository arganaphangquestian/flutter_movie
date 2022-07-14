import 'package:flutter_test/flutter_test.dart';
import 'package:moviex/data/models/film_model.dart';

import '../../fake/data.dart';
import '../../fake/response.dart';

void main() {
  test('From JSON should success', () {
    expect(model, FilmModel.fromJson(response));
  });
  test('TO JSON should success', () {
    expect(model.toJson(), response);
  });
}
