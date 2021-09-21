import 'dart:math';

List<int> numberGenerator() {
  List<int> numbers = [];
  Random randomGenerator = Random();

  for (int i = 0; i < 30; i++) {
    int randomNumber = randomGenerator.nextInt(60);

    while (numbers.contains(randomNumber)) {
      randomNumber = randomGenerator.nextInt(60);
    }

    numbers.add(randomNumber);
  }
  return numbers;
}
