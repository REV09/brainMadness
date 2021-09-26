class Question {
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
  int userAnswer;
  int correctAnswer;

  Question(
      {this.question = "",
      this.option1 = "",
      this.option2 = "",
      this.option3 = "",
      this.option4 = "",
      this.userAnswer = 0,
      this.correctAnswer = 0});

  void setQuestion(String question) {
    this.question = question;
  }

  void setOption1(String option1) {
    this.option1 = option1;
  }

  void setOption2(String option2) {
    this.option2 = option2;
  }

  void setOption3(String option3) {
    this.option3 = option3;
  }

  void setOption4(String option4) {
    this.option4 = option4;
  }

  void setUserAnswer(int userAnswer) {
    this.userAnswer = userAnswer;
  }

  void setCorrectAnswer(int correctAnswer) {
    this.correctAnswer = correctAnswer;
  }

  String getQuestion() => question;

  String getOption1() => option1;

  String getOption2() => option2;

  String getOption3() => option3;

  String getOption4() => option4;

  int getUserAnswer() => userAnswer;

  int getCorrectAnswer() => correctAnswer;

  @override
  String toString() {
    String questionToString = "$question \n$option1 \t $option2 \n $option3"
        "\t $option4 \n$userAnswer \n$correctAnswer";
    return questionToString;
  }
}
