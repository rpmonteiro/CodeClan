class HelloWorld {

  public static String name;

  public static void main(String[] args) {
    name = "Marc";
    System.out.println("Hello World");
    if (args.length > 0) {
      System.out.println("Hello " + args[0]);
    } else {
      System.out.println("Hello " + name);
    }
  }

}