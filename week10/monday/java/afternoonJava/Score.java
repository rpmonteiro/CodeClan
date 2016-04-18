public class Score {

  int[] scores;

  public Score() {
    scores = new int[6];
    scores[0] = 2;
    scores[1] = 5;
    scores[2] = 6;
    scores[3] = 0;
    scores[4] = 21;
    scores[5] = 1;
  }

  public Score(int[] scores) {
    this.scores = new int[scores.length];
    for (int i = 0; i < scores.length; i++) {
      this.scores[i] = scores[i];
    }
  }

  public int findMaxScore() {
    int currentMax = scores[0];

    for (int i = 0; i < scores.length; i++ ) {
      if (scores[i] > currentMax) {
        currentMax = scores[i];
      }
    }
    return currentMax;
  }

}