import os
import math
from enum import Enum
from math import *

asdfs = r'sdfsdf sdf sd f '

# integer data type
x = 10

# float data type
y = 10.5

# string data type
name = "John"

# boolean data type
is_valid = True

# list data type
numbers = [1, 2, 3, 4, 5]

# tuple data type
coordinates = (1, 2, 3)

# set data type
unique_numbers = {1, 2, 3, 4, 5}

# dictionary data type
student = {
    "name": "John",
    "age": 25,
    "courses": ["math", "science"],
}

# complex data type
z = 1 + 2j

# keywords
# and, as, assert, async, await, break, class, continue, def, del, elif, else, except, False, finally, for, from, global, if, import, in, is, lambda, None, nonlocal, not, or, pass, raise, return, True, try, while, with, yield

# conditionals
if x > 0:
    print("x is positive")
elif x < 0:
    print("x is negative")
else:
    print("x is zero")

# control flow statements
for i in range(10):
    print(i)

while x > 0:
    print(x)
    x -= 1

# loops
for i in range(5):
    for j in range(5):
        print(i, j)


def add(x, y):
    """This function adds two numbers together and returns the result.

    Args:
        x (int): The first number.
        y (int): The second number.

    Returns:
        int: The sum of x and y.
    """
    return x + y


class Shape:
    """This is the base class for shapes.

    Attributes:
        sides (int): The number of sides of the shape.
    """
    def __init__(self, sides):
        self.sides = sides


class Triangle(Shape):
    """This class represents a triangle, which is a shape with 3 sides.
    """
    def __init__(self):
        super().__init__(3)


class Colors(Enum):
    RED = 1
    GREEN = 2
    BLUE = 3


triangle = Triangle()
print(triangle.sides)  # prints 3

print(add(2, 3))  # prints 5

print(Colors.RED)  # prints Colors.RED


def multiply(x, y):
    return x * y


class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def distance(self, other):
        return math.sqrt((self.x - other.x) ** 2 + (self.y - other.y) ** 2)


@property
def xxx(self):
    return self._xxx


@xxx.setter
def xxx(self, value):
    self._xxx = value


p1 = Point(0, 0)
p2 = Point(3, 4)
none_value = None

print(p1.distance(p2))  # prints 5.0

# built-ins
print(sum([1, 2, 3, 4, 5]))  # prints 15

# data structures
points = [p1, p2]
point_dict = {p1: "origin", p2: "other point"}


def divide(x: int, y: int) -> float:
    try:
        result = x / y
    except ZeroDivisionError:
        print("division by zero is not allowed")
        return result  # type: ignore
    else:
        return result


def read_file(filename: str):
    try:
        with open(filename, "r") as file:
            return file.read()
    except IOError:
        print(f"could not read file {filename}")


# error handling
print(divide(10, 0))  # prints "division by zero is not allowed"

# file operations
with open("test.txt", "w") as file:
    file.write("Hello, World!")

print(read_file("test.txt"))  # prints "Hello, World!"

# modules
print(os.getcwd())  # prints the current working directory
