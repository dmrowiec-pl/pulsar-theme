# Integers
x = 42
y = -17

# Floats
a = 3.14159
b = -2.71828

# Strings
name = "Alice"
greeting = 'Hello, world!'

# Booleans
is_raining = true
is_sunny = false

# Arrays
numbers = [1, 2, 3, 4, 5]
words = ["apple", "banana", "cherry"]

# Hashes
person = { "name" => "Bob", "age" => 35 }
scores = { "Alice" => 92, "Bob" => 83 }

# Symbols
:symbol
:another_symbol

# Nil
empty = nil


# This script prompts the user for their name and age,
# and then prints out a personalized greeting.

# Keyword: BEGIN
BEGIN { puts "Welcome to the greeting script!" }

# Keyword: def
def greet(name, age)
  # Keyword: if
  if age < 18
    puts "Hi, #{name}! You are too young to use this script."
  # Keyword: elsif
  elsif age < 50
    puts "Hello, #{name}! How are you today?"
  # Keyword: else
  else
    puts "Good morning, #{name}! It's nice to see you."
  end
end

# Keyword: while
while true
  # Keyword: print
  print "Please enter your name: "
  # Keyword: gets
  name = gets.chomp

  # Keyword: break
  break if name == "quit"

  # Keyword: print
  print "Please enter your age: "
  # Keyword: gets
  age = gets.chomp.to_i

  # Keyword: next
  next if age == 0

  greet(name, age)
end

# Keyword: END
END { puts "Thank you for using the greeting script!" }

# Functions
def greet(name)
    puts "Hello, #{name}!"
  end
  
  greet("Alice")
  
  # Classes
  class Person
    # Constructor
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    # Getter method
    def name
      @name
    end
  
    # Setter method
    def name=(name)
      @name = name
    end
  end
  
  # Create an instance of the Person class
  person = Person.new("Alice", 30)
  puts person.name
  person.name = "Bob"
  puts person.name
  
  # Inheritance
  class Student < Person
    def initialize(name, age, grade)
      super(name, age)
      @grade = grade
    end
  end
  
  student = Student.new("Charlie", 18, "A")
  puts student.name
  
  # Docstrings
  def add(x, y)
    # This function adds two numbers and returns the result
    x + y
  end
  
  puts add(1, 2)
  
  # Enums
  class Days
    MONDAY = 1
    TUESDAY = 2
    WEDNESDAY = 3
    THURSDAY = 4
    FRIDAY = 5
    SATURDAY = 6
    SUNDAY = 7
  end
  
  puts Days::MONDAY

# Imports
require "json"

# Namespaces
module MyModule
  class MyClass
    def self.hello
      puts "Hello from MyModule::MyClass"
    end
    def print_self
        puts self
    end
  end
end

MyModule::MyClass.hello

# Objects
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "#{name} is #{age} years old"
  end
end

person = Person.new("Alice", 30)
puts person

# Decorators
def my_decorator(func)
  def wrapper(*args, **kwargs)
    puts "Before function call"
    result = func(*args, **kwargs)
    puts "After function call"
    result
  end
  wrapper
end

@my_decorator
def greet(name)
  puts "Hello, #{name}!"
end

greet("Bob")

# Structures
Person = Struct.new(:name, :age)
person = Person.new("Charlie", 25)
puts person.name

# Built-ins
arr = [1, 2, 3]
puts arr.length
puts arr.join(", ")

# Error handling
begin
    # This code may raise an exception
    x = 10 / 0
  rescue ZeroDivisionError => e
    puts "Division by zero: #{e.message}"
  end
  
  # File operations
  File.open("myfile.txt", "w") do |f|
    f.write("Hello, world!")
  end
  
  File.open("myfile.txt", "r") do |f|
    puts f.read
  end
  
  # Modules
  module MyModule
    def self.hello
      puts "Hello from MyModule"
    end
  end
  
  MyModule.hello


# define a hash with symbol keys
person = {
    name: 'John',
    age: 30,
    city: 'New York'
  }
  
  # access the value for the :name key
  puts person[:name]  # Output: "John"
  
  # update the value for the :age key
  person[:age] = 35
  puts person[:age]  # Output: 35
  
  # add a new key-value pair to the hash
  person[:occupation] = 'Software Developer'
  puts person[:occupation]  # Output: "Software Developer"
