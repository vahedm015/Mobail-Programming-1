void main() {
  Map<String, int> studentScores = {
    "Ali": 18,
    "Sara": 20,
    "Reza": 15
  };

  studentScores.forEach((name, score) {
    print("$name's score is: $score");
  });
}

/*
--- OUTPUT ---
Ali's score is: 18
Sara's score is: 20
Reza's score is: 15
*/
