// ignore_for_file: prefer_typing_uninitialized_variables

// In dart the type float doesn't so we use double

class Player {
  String playerName;
  String difficult;
  double timeElapsed;
  int correctAnswers;
  int incorrectAnswers;

  Player(
      {this.playerName = "",
      this.difficult = "",
      this.timeElapsed = 0.0,
      this.correctAnswers = 0,
      this.incorrectAnswers = 0});

  void setName(String playerName) {
    this.playerName = playerName;
  }

  void setDifficult(String difficult) {
    this.difficult = difficult;
  }

  void setTime(double timeElapsed) {
    this.timeElapsed = timeElapsed;
  }

  void setCorrectAnswers(int correctAnswers) {
    this.correctAnswers = correctAnswers;
  }

  void setIncorrectAnswers(int incorrectAnswers) {
    this.incorrectAnswers = incorrectAnswers;
  }

  String getName() => playerName;

  String getDifficult() => difficult;

  double getTime() => timeElapsed;

  int getCorrectAnswers() => correctAnswers;

  int getIncorrectAnswers() => incorrectAnswers;

  @override
  String toString() {
    String playerToString = "$playerName \n$difficult \n$timeElapsed"
        "\n$correctAnswers \n$incorrectAnswers";
    return playerToString;
  }
}
