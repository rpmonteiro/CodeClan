public class TimeTable {

  int[] columns;

  public TimeTable(int numOfColumns) {
    this.columns = new int[numOfColumns];
    for (int i = 0; i < this.columns.length; i++) {
      this.columns[i] = i;
    }
  }

  public void drawTable() {
    //Some CSS
    System.out.print("       ");

    //Prints the header row
    for (int i = 0; i < columns.length; i++) {
      System.out.format("%4d", i);
      }

    //Some more CSS
    System.out.println();
    System.out.println("-----------------------------------------------");

    //Prints the left column
    for (int i = 0; i < columns.length; i++ ) {
      System.out.format("%4d | ", i);

      //does the multiplication
      for (int j = 0; j < columns.length; j++ ) {
        System.out.format("%4d", i * j);
      }
      System.out.println();
    }
  }

}