#include <iostream>
#include "myheader.h"
#include "external/externallib.h"

int main()
{
    // integer data types
    short s = 10;
    int i = 100;
    long l = 1000;
    long long ll = 10000;

    // floating-point data types
    float f = 3.14f;
    double d = 3.1415926535;
    long double ld = 3.14159265358979323846;

    // character data type
    char c = 'A';

    // boolean data type
    bool b = true;

    // string data type (std::string)
    std::string str = "Hello, World!";

    std::cout << "short: " << s << std::endl;
    std::cout << "int: " << i << std::endl;
    std::cout << "long: " << l << std::endl;
    std::cout << "long long: " << ll << std::endl;
    std::cout << "float: " << f << std::endl;
    std::cout << "double: " << d << std::endl;
    std::cout << "long double: " << ld << std::endl;
    std::cout << "char: " << c << std::endl;
    std::cout << "bool: " << b << std::endl;
    std::cout << "string: " << str << std::endl;

    return 0;
}

#include <iostream>
#include <string>

int main()
{
    // language keywords
    int autoInt;
    const double PI = 3.1415926535;
    bool isTrue = false;
    void doNothing();
    struct Point {
        int x;
        int y;
    };

    // conditionals
    int x = 10;
    int y = 20;
    if (x < y) {
        std::cout << "x is less than y" << std::endl;
    } else if (x > y) {
        std::cout << "x is greater than y" << std::endl;
    } else {
        std::cout << "x is equal to y" << std::endl;
    }

    // switch statement
    std::string str = "Hello";
    switch (str) {
        case "Hello":
            std::cout << "Hello, World!" << std::endl;
            break;
        case "Goodbye":
            std::cout << "Goodbye, World!" << std::endl;
            break;
        default:
            std::cout << "Unrecognized input" << std::endl;
    }

    // control flow statements
    for (int i = 0; i < 5; i++) {
        std::cout << i << std::endl;
    }

    int j = 0;
    while (j < 5) {
        std::cout << j << std::endl;
        j++;
    }

    int k = 0;
    do {
        std::cout << k << std::endl;
        k++;
    } while (k < 5);

    return 0;
}

#include <iostream>
#include <string>

// function with a return value
int add(int x, int y)
{
    return x + y;
}

// function with a void return type
void printMessage(std::string message)
{
    std::cout << message << std::endl;
}

// class with a constructor and member functions
class Shape {
public:
    // constructor
    Shape(int width, int height) : width_(width), height_(height) {}

    // member function
    int getArea() const {
        return width_ * height_;
    }

private:
    // member variables
    int width_;
    int height_;
};

// derived class with inheritance
class Rectangle : public Shape {
public:
    // constructor that calls the base class constructor
    Rectangle(int width, int height) : Shape(width, height) {}

    // member function that overrides a base class function
    int getArea() const {
        return Shape::getArea() * 2;
    }
};

// enumeration
enum class Color {
    Red,
    Green,
    Blue
};

int main()
{
    // function call
    int result = add(10, 20);
    std::cout << "Result: " << result << std::endl;

    // function call
    printMessage("Hello, World!");

    // class instance and member function call
    Shape shape(10, 20);
    int area = shape.getArea();
    std::cout << "Shape area: " << area << std::endl;

    // derived class instance and member function call
    Rectangle rectangle(10, 20);
    int rectangleArea = rectangle.getArea();
    std::cout << "Rectangle area: " << rectangleArea << std::endl;

    // enum value
    Color color = Color::Green;
    if (color == Color::Green) {
        std::cout << "The color is green" << std::endl;
    }

    return 0;
}

#include <iostream>
#include <string>
#include <vector>
#include <cmath>

// namespace
namespace MyLib {
    // structure
    struct Point {
        int x;
        int y;
    };

    // function that uses a structure as an argument
    double distance(Point p1, Point p2)
    {
        int dx = p2.x - p1.x;
        int dy = p2.y - p1.y;
        return std::sqrt(dx*dx + dy*dy);
    }
}

int main()
{
    // object creation
    std::string message = "Hello, World!";
    std::vector<int> numbers = {1, 2, 3, 4, 5};

    // use of a built-in function
    double result = std::abs(-10.5);
    std::cout << "Absolute value: " << result << std::endl;

    // use of a namespace and structure
    MyLib::Point p1 = {0, 0};
    MyLib::Point p2 = {10, 10};
    double dist = MyLib::distance(p1, p2);
    std::cout << "Distance: " << dist << std::endl;

    return 0;
}

#include <iostream>
#include <fstream>
#include <string>

// module function
int divide(int x, int y)
{
    // error handling
    if (y == 0) {
        throw std::invalid_argument("Cannot divide by zero");
    }
    return x / y;
}

int main()
{
    try {
        // file operations
        std::ofstream outfile("output.txt");
        outfile << "Writing to a file" << std::endl;
        outfile.close();

        // module function call
        int result = divide(10, 0);
        std::cout << "Result: " << result << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}
