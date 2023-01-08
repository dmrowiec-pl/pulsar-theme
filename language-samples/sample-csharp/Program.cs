// Declare variables of different data types
string str = "Hello, world!"; // String
int num = 42; // Int
bool bool = true; // Boolean
object obj = new object(); // Object

// Declare arrays and lists
int[] arr = new int[] { 1, 2, 3, 4, 5 }; // Array
List<int> list = new List<int> { 1, 2, 3, 4, 5 }; // List

// Declare dictionaries and tuples
Dictionary<string, int> dict = new Dictionary<string, int>
{
  { "one", 1 },
  { "two", 2 },
  { "three", 3 }
}; // Dictionary
Tuple<int, string, bool> tup = new Tuple<int, string, bool>(1, "two", true); // Tuple

// Use the variables in expressions and statements
Console.WriteLine("{0} The answer is {1}.", str, num);
if (bool)
{
  Console.WriteLine("True");
}
else
{
  Console.WriteLine("False");
}


// Keywords
int x = 0;
const string CONST = "constant";

// Conditionals
if (x == 0)
{
  Console.WriteLine("x is zero");
}
else if (x < 0)
{
  Console.WriteLine("x is negative");
}
else
{
  Console.WriteLine("x is positive");
}

// Control flow
switch (x)
{
  case 0:
    Console.WriteLine("x is zero");
    break;
  case 1:
    Console.WriteLine("x is one");
    break;
  default:
    Console.WriteLine("x is something else");
    break;
}

// Loops
for (int i = 0; i < 10; i++)
{
  Console.WriteLine(i);
}

int j = 0;
while (j < 10)
{
  Console.WriteLine(j);
  j++;
}

int k = 0;
do
{
  Console.WriteLine(k);
  k++;
} while (k < 10);


// Function with docstring
/// <summary>
/// Returns the sum of two numbers.
/// </summary>
/// <param name="x">The first number.</param>
/// <param name="y">The second number.</param>
/// <returns>The sum of the two numbers.</returns>
int Add(int x, int y)
{
  return x + y;
}

// Struct with docstring
/// <summary>
/// A struct representing a point in two-dimensional space.
/// </summary>
struct Point
{
  public int X { get; set; }
  public int Y { get; set; }
}

// Enum with docstring and variant data
/// <summary>
/// An enum representing a color.
/// </summary>
enum Color
{
  /// <summary>
  /// The color red.
  /// </summary>
  Red,
  /// <summary>
  /// The color green.
  /// </summary>
  Green,
  /// <summary>
  /// The color blue.
  /// </summary>
  Blue,
  /// <summary>
  /// A custom color defined by its RGB values.
  /// </summary>
  Custom,
}

// Class with inheritance
/// <summary>
/// A class representing a rectangle.
/// </summary>
class Rectangle
{
  public int Width { get; set; }
  public int Height { get; set; }

  public int Area()
  {
    this.Area();
    return Width * Height;
  }
}

/// <summary>
/// A class representing a square.
/// </summary>
class Square : Rectangle
{
  public new int Area()
  {
    base.Area();
    return Width * Width;
  }
}

// Use functions, structs, enums, and classes
Console.WriteLine(Add(1, 2));
Point p = new Point { X = 0, Y = 0 };
Console.WriteLine("{0} {1}", p.X, p.Y);

Color c = Color.Custom;
 console.WriteLine(c);

Rectangle r = new Rectangle { Width = 10, Height = 20 };
Square s = new Square { Width = 10 };
 Console.WriteLine("{0} {1}", r.Area(), s.Area());

// Import
using System.Collections.Generic;

// Namespace
namespace Geometry
{
  // Object
  class Circle
  {
    public double Radius { get; set; }

    public double Area()
    {
      return System.Math.PI * Radius * Radius;
    }
  }

  // Decorator
  [System.Serializable]
  class Rectangle
  {
    public int Width { get; set; }
    public int Height { get; set; }

    public int Area()
    {
      return Width * Height;
    }
  }

  // Structure
  struct Triangle
  {
    public int Side1 { get; set; }
    public int Side2 { get; set; }
    public int Side3 { get; set; }
  }

  // Built-in
  class Program
  {
    static void Main(string[] args)
    {
      // Use the imported and namespaced types
      List<int> list = new List<int> { 1, 2, 3, 4, 5 };
      Console.WriteLine(string.Join(", ", list));

      // Use the object and its method
      Circle c = new Circle { Radius = 10.0 };
      Console.WriteLine(c.Area());

      // Use the decorated structure and its method
      Rectangle r = new Rectangle { Width = 10, Height = 20 };
      Console.WriteLine(r.Area());

      // Use the structure and property accessors
      Triangle t = new Triangle { Side1 = 3, Side2 = 4, Side3 = 5 };
      Console.WriteLine("{0} {1} {2}", t.Side1, t.Side2, t.Side3);
    }
  }
}


// Error handling
using System;
using System.IO;

try
{
  int x = int.Parse("abc");
}
catch (FormatException e)
{
  Console.WriteLine(e.Message);
}
catch (Exception e)
{
  Console.WriteLine(e.Message);
}
finally
{
  Console.WriteLine("Done.");
}

// File operations
string path = "file.txt";
if (File.Exists(path))
{
  string content = File.ReadAllText(path);
  Console.WriteLine(content);
}

// Modules
namespace Geometry
{
  class Circle
  {
    public double Radius { get; set; }

    public double Area()
    {
      return System.Math.PI * Radius * Radius;
    }
  }
}

namespace Shapes
{
  class Program
  {
    static void Main(string[] args)
    {
      // Use the imported and namespaced types
      Geometry.Circle c = new Geometry.Circle { Radius = 10.0 };
      Console.WriteLine(c.Area());
    }
  }
}



