# Integer data type
x = 42

# Float data type
y = 3.14

# Complex data type
z = 3 + 4im

# Boolean data type
a = true

# String data type
b = "hello"

# Symbol data type
c = :hello

# Tuple data type
d = (1, "two", 3.0)

# Array data type
e = [1, 2, 3]

# Dict data type
f = Dict("a" => 1, "b" => 2, "c" => 3)

# Set data type
g = Set([1, 2, 3])

# Range data type
h = 1:10

# Keywords
if true
    println("This is an if statement")
  else
    println("This is an else statement")
  end
  
  # Conditionals
  x = 5
  if x > 3
    println("x is greater than 3")
  elseif x < 3
    println("x is less than 3")
  else
    println("x is equal to 3")
  end
  
  # Control flow
  for i in 1:10
    println(i)
  end
  
  while x > 0
    println(x)
    x -= 1
  end
  
  # Loops
  i = 1
  while true
    println("This loop will run forever until it is broken")
    if i > 10
      break
    end
    i += 1
  end

# Functions
function add(x, y)
    return x + y
  end
  
  # Classes
  abstract type Person end
  
  struct Student <: Person
    name::String
    age::Int64
    function greet()
      println("Hello, my name is $name")
    end
  end
  
  struct Teacher <: Person
    name::String
    age::Int64
    subject::String
    function greet()
      println("Hello, my name is $name and I teach $subject")
    end
  end
  
  # Inheritance
  struct GraduateStudent <: Student
    major::String
    function study()
      println("I am studying $major")
    end
  end
  
  # Docstrings
  """
  This function adds two numbers together
  
  # Arguments
  - `x`: A numeric value
  - `y`: A numeric value
  
  # Returns
  The sum of `x` and `y`
  """
  function add(x, y)
    return x + y
  end
  
  # Enums
  enum Weekday
    Monday
    Tuesday
    Wednesday
    Thursday
    Friday
  end
  
  enum Weekend
    Saturday
    Sunday
  end
  
  enum Day
    Monday
    Tuesday
    Wednesday
    Thursday
    Friday
    Saturday
    Sunday
  end

# Imports
using DataFrames

# Namespaces
df = DataFrame(A = [1, 2, 3], B = [4, 5, 6])

# Objects
typeof(df)

# Decorators
function format(f)
  function decorated(x)
    f(round(x, 2))
  end
end

function add(x, y)
  return x + y
end

add_formatted = format(add)
add_formatted(3.14159265358979323846)

# Structures
Dict(:a => 1, :b => 2, :c => 3)

# Built-ins
isa(3.14, Float64)

# Error handling
function divide(x, y)
    if y == 0
      error("Cannot divide by 0")
    end
    return x / y
  end
  
  # File operations
  open("example.txt", "w") do file
    write(file, "Hello, world!")
  end
  
  # Modules
  module MyModule
    function myfunction()
      println("This is a module function")
    end
  end
  
  using MyModule
  myfunction()
