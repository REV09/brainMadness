// ignore_for_file: prefer_typing_uninitialized_variables

// In dart the type float doesn't exist so we use var

class Player {
  String playerName;
  var scoreObtained;
  var timeElapsed;

  Player(
      {this.playerName = "", this.scoreObtained = 0.0, this.timeElapsed = 0.0});

  set name(String playerName) {
    this.playerName = playerName;
  }

  set score(var scoreObtained) {
    this.scoreObtained = scoreObtained;
  }

  set time(var timeElapsed) {
    this.timeElapsed = timeElapsed;
  }

  String get name => playerName;

  get score => scoreObtained;

  get time => timeElapsed;

  @override
  String toString() => "$playerName \n$scoreObtained \n$timeElapsed";
}
