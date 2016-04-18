import java.util.Scanner;

class TimeTableTest {

  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);

    TimeTable timeTable = new TimeTable(10);

    System.out.println("Hello, welcome to maths class number 1.");
    System.out.println("Ready to start? (y/N)");

    String answer = in.next();

    if (answer.equals("N")) {
      System.exit(0);
    }
    timeTable.drawTable();
  }

}