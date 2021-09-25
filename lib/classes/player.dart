// ignore_for_file: prefer_typing_uninitialized_variables

// In dart the type float doesn't so we use double

class Player {
  String playerName;
  double scoreObtained;
  double timeElapsed;

  Player(
      {this.playerName = "", this.scoreObtained = 0.0, this.timeElapsed = 0.0});

  void setName(String playerName) {
    this.playerName = playerName;
  }

  void setScore(var scoreObtained) {
    this.scoreObtained = scoreObtained;
  }

  void setTime(var timeElapsed) {
    this.timeElapsed = timeElapsed;
  }

  String getName() => playerName;

  double getScore() => scoreObtained;

  double getTime() => timeElapsed;

  @override
  String toString() => "$playerName \n$scoreObtained \n$timeElapsed";
}
