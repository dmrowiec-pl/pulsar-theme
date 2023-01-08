import java.util.Scanner;
import java.util.ArrayList;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class DataTypes {
  public static void main(String[] args) {
    // Integer data types
    byte b = 100;
    short s = 10000;
    int i = 100000;
    long l = 1000000L;

    // Floating point data types
    float f = 3.14f;
    double d = 3.1415926535;

    // Character data type
    char c = 'A';

    // Boolean data type
    boolean bool = true;

    // String data type
    String str = "Hello, world!";
  }
}

public class Keywords {
  public static void main(String[] args) {
    // Keywords
    final int max = 100;
    static int count = 0;
    abstract class Shape { }
    final class Circle extends Shape { }
    boolean flag = true;
    if (flag) {
      System.out.println("flag is true");
    } else {
      System.out.println("flag is false");
    }
    for (int i = 0; i < 10; i++) {
      System.out.println(i);
    }
    int j = 0;
    while (j < 10) {
      System.out.println(j);
      j++;
    }
    do {
      System.out.println(j);
      j++;
    } while (j < 10);
    switch (j) {
      case 0:
        System.out.println("j is 0");
        break;
      case 1:
        System.out.println("j is 1");
        break;
      default:
        System.out.println("j is neither 0 nor 1");
        break;
    }
  }
}

/**
 * This is a docstring for the Shape class.
 * It describes the purpose and behavior of the class.
 */
public abstract class Shape {
  /**
   * This is a docstring for the getArea method.
   * It describes the purpose and behavior of the method.
   * @return The area of the shape.
   */
  public abstract double getArea();
}

public class Circle extends Shape {
  private final double radius;

  /**
   * This is the constructor for the Circle class.
   * It initializes the radius of the circle.
   * @param radius The radius of the circle.
   */
  public Circle(double radius) {
    super();
    this.radius = radius;
  }

  /**
   * This method calculates and returns the area of the circle.
   * @return The area of the circle.
   */
  @Override
  public double getArea() {
    return Math.PI * radius * radius;
  }
}

public class Main {
  public static void main(String[] args) {
    // Enum example
    ShapeType shapeType = ShapeType.CIRCLE;
    switch (shapeType) {
      case CIRCLE:
        Circle circle = new Circle(5.0);
        System.out.println("Circle area: " + circle.getArea());
        break;
      case SQUARE:
        // Add code to create and calculate area of a square
        break;
      case RECTANGLE:
        // Add code to create and calculate area of a rectangle
        break;
    }
  }
}

/**
 * This is an enum for the different types of shapes.
 */
enum ShapeType {
  CIRCLE, SQUARE, RECTANGLE
}


public class Main {
  public static void main(String[] args) {
    // Use the Scanner class from the java.util namespace
    Scanner scanner = new Scanner(System.in);
    String input = scanner.nextLine();

    // Create an ArrayList object and add some elements to it
    ArrayList<String> list = new ArrayList<>();
    list.add("item1");
    list.add("item2");
    list.add("item3");

    // Use a for-each loop to iterate through the ArrayList
    for (String item : list) {
      System.out.println(item);
    }

    // Use the built-in size method to get the number of elements in the ArrayList
    int size = list.size();
    System.out.println("Number of elements: " + size);
  }
}

public class Main {
  public static void main(String[] args) {
    // Error handling example
    try {
      int result = divide(10, 0);
      System.out.println(result);
    } catch (ArithmeticException e) {
      System.out.println("Cannot divide by zero");
    }

    // File operations example
    String fileName = "test.txt";
    Path path = Paths.get(fileName);
    try {
      byte[] data = Files.readAllBytes(path);
      String content = new String(data);
      System.out.println(content);
    } catch (IOException e) {
      System.out.println("Error reading file");
    }
  }

  // Function that demonstrates error handling
  public static int divide(int a, int b) throws ArithmeticException {
    if (b == 0) {
      throw new ArithmeticException("Cannot divide by zero");
    }
    return a / b;
  }
}
