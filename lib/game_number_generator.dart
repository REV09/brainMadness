import 'dart:math';

List<int> numberGeneratorBase(int maxRange, int numberOfElements) {
  List<int> numbers = [];
  Random randomGenerator = Random();

  for (int i = 0; i < numberOfElements; i++) {
    int randomNumber = randomGenerator.nextInt(maxRange);

    while (numbers.contains(randomNumber)) {
      randomNumber = randomGenerator.nextInt(maxRange);
    }

    numbers.add(randomNumber);
  }
  return numbers;
}

List<int> generatorEasyMode() {
  int maxRange = 60;
  int numberOfElements = 30;

  List<int> numbersEasyMode = numberGeneratorBase(maxRange, numberOfElements);
  return numbersEasyMode;
}

List<int> generatorNormalMode() {
  int maxRange = 90;
  int numberOfElements = 45;

  List<int> numberNormalMode = numberGeneratorBase(maxRange, numberOfElements);
  return numberNormalMode;
}

List<int> generatorHardMode() {
  int maxRange = 120;
  int numberOfElements = 45;

  List<int> numberNormalMode = numberGeneratorBase(maxRange, numberOfElements);
  return numberNormalMode;
}

List<String> signsGeneratorBase(int numberElements) {
  List<String> signsCollection = ['+', '-', '*', '/'];
  List<String> signs = [];
  Random randomGenerator = Random();

  for (int i = 0; i < numberElements; i++) {
    int randomSign = randomGenerator.nextInt(4);
    signs.add(signsCollection.elementAt(randomSign));
  }

  return signs;
}
