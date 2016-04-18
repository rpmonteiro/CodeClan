class ScoreTest {

  public static void main(String[] args) {
    int[] myScores = {10, 92, 2, 3, 75, 2};
    Score score = new Score(myScores);
    int maxScore = score.findMaxScore();
    System.out.println(maxScore);
  }

}