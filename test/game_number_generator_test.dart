import 'package:game_math/game_number_generator.dart';
import 'package:test/test.dart';

void main() {
  test('generator', () {
    expect(numberGenerator().length, 30);
  });
}
