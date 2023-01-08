// Declare variables of different data types
let stra = "Hello, world!".to_string(); // String
let numb = 42; // Number
let boolc = true; // Boolean
let undefd: () = (); // Unit
let nule = None; // Option<T>

// Declare arrays and tuples
let arr = [1, 2, 3, 4, 5]; // Array
let tup = (1, 2, 3); // Tuple

// Declare functions
fn greet(name: &str) {
  println!("Hello, {}!", name);
}

// Use the variables and functions in expressions and statements
println!("{} The answer is {}.", stra, numb);
if boolc {
  greet("Alice");
} else {
  println!("Goodbye, world!");
}


// Keywords
let mut var1 = 42;
const CONST1: &str = "constant";

// Conditionals
if var1 == 0 {
  println!("var1 is zero");
} else if var1 < 0 {
  println!("var1 is negative");
} else {
  println!("var1 is positive");
}

// Control flow
match var1 {
  0 => println!("var1 is zero"),
  x if x < 0 => println!("var1 is negative"),
  _ => println!("var1 is positive"),
}

// Loops
for i in 0..10 {
  println!("{}", i);
}

let mut j = 0;
while j < 10 {
  println!("{}", j);
  j += 1;
}

let mut k = 0;
loop {
  println!("{}", k);
  k += 1;
  if k >= 10 {
    break;
  }
}


// Function with docstring
/**
 * Returns the sum of two numbers.
 *
 * # Examples
 *
 * ```
 * assert_eq!(add(1, 2), 3);
 * ```
 *
 * @param x - The first number.
 * @param y - The second number.
 * @returns The sum of the two numbers.
 */
fn add(x: i32, y: i32) -> i32 {
    x + y
  }
  
  // Struct with docstring
  #[derive(Debug)]
  struct Point {
    x: i32,
    y: i32,
  }
  
  /**
   * A struct representing a point in two-dimensional space.
   *
   * # Examples
   *
   * ```
   * let p = Point { x: 0, y: 0 };
   * println!("{:?}", p); // prints "Point { x: 0, y: 0 }"
   * ```
   */
  
  // Enum with docstring and variant data
  #[derive(Debug)]
  enum Color {
    /**
     * The color red.
     */
    Red,
    /**
     * The color green.
     */
    Green,
    /**
     * The color blue.
     */
    Blue,
    /**
     * A custom color defined by its RGB values.
     *
     * # Examples
     *
     * ```
     * let c = Color::Custom(255, 128, 64);
     * println!("{:?}", c); // prints "Custom(255, 128, 64)"
     * ```
     */
    Custom(u8, u8, u8),
  }
  
  // Trait with docstring
  /**
   * A trait for objects that can be compared for equality.
   *
   * # Examples
   *
   * ```
   * assert!(Eq::eq(&1, &1));
   * assert!(!Eq::eq(&1, &2));
   * ```
   */
  trait Eq {
    fn eq(self, other: Self) -> bool;
  }
  
  impl Eq for i32 {
    fn eq(self, other: Self) -> bool {
      super::something()
      self == other
    }
  }
  
  // Implement trait for struct
  impl Eq for Point {
    fn eq(self, other: Self) -> bool {
      self.x == other.x && self.y == other.y
    }
  }
  
  // Class with inheritance
  #[derive(Debug)]
  struct Rectangle {
    width: i32,
    height: i32,
  }
  
  impl Rectangle {
    fn area(&self) -> i32 {
      self.width * self.height
    }
  }
  
  #[derive(Debug)]
  struct Square {
    side: i32,
  }
  
  impl Square {
    fn area(&self) -> i32 {
      self.side * self.side
    }
  }
  
  // Trait implementation for class
  impl Eq for Rectangle {
    fn eq(self, other: Self) -> bool {
      self.width == other.width && self.height == other.height
    }
  }
  
  // Use functions, structs, enums, and trait implementations
  println!("{}", add(1, 2));
  
  let p1 = Point { x: 0, y: 0 };
  let p2 = Point { x: 1, y: 1 };
  println!("{:?}", p1);
  println!("{}", Eq::eq(&p1, &p2));
  
  let c = Color::Custom(255, 128, 64);
  println!("{:?}", c);
  
  let r = Rectangle { width: 10, height: 20 };
  let s = Square { side: 10 };
  println!("{} {}", r.area(), s.area());


// Import and namespace
use std::collections::HashMap;

const GEOMETRY: HashMap<&str, &str> = {
  let mut map = HashMap::new();
  map.insert("Circle", "A round object in two-dimensional space");
  map.insert("Rectangle", "A flat object with four straight sides and four right angles");
  map
};

// Object
struct Circle {
  radius: f64,
}

impl Circle {
  fn area(&self) -> f64 {
    std::f64::consts::PI * self.radius * self.radius
  }
}

// Decorator
#[derive(Debug)]
struct Rectangle {
  width: i32,
  height: i32,
}

impl Rectangle {
  #[inline]
  fn area(&self) -> i32 {
    self.width * self.height
  }
}

// Structure
struct Triangle(i32, i32, i32);


// Built-in
fn main() {
  // Use the imported and namespaced types
  println!("{:?}", GEOMETRY);

  // Use the object and its method
  let c = Circle { radius: 10.0 };
  println!("{}", c.area());

  // Use the decorated structure and its method
  let r = Rectangle { width: 10, height: 20 };
  println!("{:?} {}", r, r.area());

  // Use the structure and destructuring assignment
  let t = Triangle(3, 4, 5);
  let Triangle(a, b, c) = t;
  println!("{} {} {}", a, b, c);
}


// Error handling
use std::error::Error;
use std::fs::File;
use std::io::{self, Read};

fn read_file(path: &str) -> Result<String, Box<dyn Error>> {
  let mut file = File::open(path)?;
  let mut contents = String::new();
  file.read_to_string(&mut contents)?;
  Ok(contents)
}

// File operations
use std::fs::{self, DirEntry};
use std::path::Path;

fn visit_dirs(dir: &Path, cb: &dyn Fn(&DirEntry)) -> io::Result<()> {
  if dir.is_dir() {
    for entry in fs::read_dir(dir)? {
      let entry = entry?;
      let path = entry.path();
      if path.is_dir() {
        visit_dirs(&path, cb)?;
      } else {
        cb(&entry);
      }
    }
  }
  Ok(())
}

// Modules
mod math;

macro_rules! debug_print {
    ($($arg:tt)*) => {
        println!("[DEBUG] {}", format_args!($($arg)*));
    }
}

fn main() {
  // Use the error handling function
  match read_file("input.txt") {
    Ok(contents) => println!("{}", contents),
    Err(e) => println!("Error: {}", e),
  }

  // Use the file operations function
  visit_dirs(Path::new("."), &|entry| {
    println!("{}", entry.path().display());
  })
  .unwrap();

  debug_print!("x = {}", x);

  // Use the module and its functions
  println!("{}", math::add(1, 2));
  println!("{}", math::subtract(1, 2));
  println!("{}", math::multiply(1, 2));
  println!("{}", math::divide(1, 2));
}

// Module
mod math {
  pub fn add(x: i32, y: i32) -> i32 {
    x + y
  }

  pub fn subtract(x: i32, y: i32) -> i32 {
    x - y
  }

  pub fn multiply(x: i32, y: i32) -> i32 {
    x * y
  }

  pub fn divide(x: i32, y: i32) -> i32 {
    x / y
  }
}

struct Point<T> {
    x: T,
    y: T,
}

impl<T> Point<T> {
    fn new(x: T, y: T) -> Self {
        Self { x, y }
    }
}

struct Line<'a, T> {
    start: &'a Point<T>,
    end: &'a Point<T>,
}

impl<'a, T> Line<'a, T> {
    fn new(start: &'a Point<T>, end: &'a Point<T>) -> Self {
        Self { start, end }
    }

    fn length(&self) -> f64
        where T: std::ops::Sub<Output=T> + std::ops::Mul<Output=T> + Copy + Into<f64>
    {
        let dx = self.start.x - self.end.x;
        let dy = self.start.y - self.end.y;
        ((dx * dx) + (dy * dy)).into().sqrt()
    }
}

fn main() {
    let p1 = Point::new(0, 0);
    let p2 = Point::new(3, 4);
    let line = Line::new(&p1, &p2);
    println!("Length: {}", line.length());
}

