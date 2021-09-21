import 'package:game_math/game_number_generator.dart';
import 'package:test/test.dart';

void main() {
  test('numberGeneratorBaseTest', () {
    expect(numberGeneratorBase(60, 30).length, 30);
  });

  test('generatorEasyModeTest', () {
    expect(generatorEasyMode().length, 30);
  });

  test('generatorNormalModeTest', () {
    expect(generatorNormalMode().length, 45);
  });

  test('generatorHardModeTest', () {
    expect(generatorHardMode().length, 45);
  });

  test('singsGeneratorBaseTest', () {
    expect(signsGeneratorBase(15).length, 15);
  });
}
