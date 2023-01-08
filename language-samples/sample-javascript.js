// Declare variables of different data types
var str = "Hello, world!"; // String
var num = 42; // Number
var bool = true; // Boolean
var undef = undefined; // Undefined
var nul = null; // Null

// Declare arrays and objects
var arr = [1, 2, 3, 4, 5]; // Array
var obj = {
  name: "John",
  age: 30,
  hobbies: ["reading", "music", "sports"]
}; // Object

// Declare functions
function greet(name) {
  console.log("Hello, " + name + "!");
}

// Use the variables and functions in expressions and statements
console.log(str + " The answer is " + num + ".");
if (bool) {
  greet("Alice");
} else {
  console.log("Goodbye, world!");
}

// Keywords
var var1;
const const1 = "constant";
let let1;

// Conditionals
if (var1 === undefined) {
  console.log("var1 is undefined");
} else if (var1 === null) {
  console.log("var1 is null");
} else {
  console.log("var1 is defined");
}

// Control flow
switch (var1) {
  case undefined:
    console.log("var1 is undefined");
    break;
  case null:
    console.log("var1 is null");
    break;
  default:
    console.log("var1 is defined");
    break;
}

// Loops
for (let i = 0; i < 10; i++) {
  console.log(i);
}

let j = 0;
while (j < 10) {
  console.log(j);
  j++;
}

let k = 0;
do {
  console.log(k);
  k++;
} while (k < 10);


// Function with docstring
/**
 * Returns the sum of two numbers.
 * @param {number} x - The first number.
 * @param {number} y - The second number.
 * @returns {number} The sum of the two numbers.
 */
 function add(x, y) {
  return x + y;
}

// Class with docstring and inheritance
/**
 * A class representing a point in two-dimensional space.
 * @param {number} x - The x coordinate of the point.
 * @param {number} y - The y coordinate of the point.
 */
class Point {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }

  /**
   * Returns a string representation of the point.
   * @returns {string} A string in the form (x, y).
   */
  toString() {
    return "(" + this.x + ", " + this.y + ")";
  }
}

/**
 * A class representing a circle in two-dimensional space.
 * @param {number} x - The x coordinate of the center of the circle.
 * @param {number} y - The y coordinate of the center of the circle.
 * @param {number} radius - The radius of the circle.
 */
class Circle extends Point {
  constructor(x, y, radius) {
    super(x, y);
    this.radius = radius;
  }

  /**
   * Returns the area of the circle.
   * @returns {number} The area of the circle.
   */
  getArea() {
    return Math.PI * this.radius * this.radius;
  }
}

// Enum
const Color = Object.freeze({
  RED: "red",
  GREEN: "green",
  BLUE: "blue"
});

console.log(Color.RED); // "red"


// Import and namespace
import { Point } from "./point";

const Geometry = {
  // Object
  Circle: class {
    // Decorator
    @log
    radius;

    constructor(radius) {
      this.radius = radius;
    }
  },

  // Structure
  Rectangle: {
    width: 0,
    height: 0
  },

  // Built-in
  PI: Math.PI
};

// Decorator function
function log(target, key) {
  console.log(`${key} has been accessed`);
}

// Use the imported and namespaced types
const c = new Geometry.Circle(5);
console.log(Geometry.PI * c.radius * c.radius);

const p = { x: 0, y: 0 };
const r = { width: 10, height: 20 };

// Error handling
try {
  // This may throw an error
  someFunction();
} catch (error) {
  console.error(error);
} finally {
  console.log("Finally block executed.");
}

// File operations
const fs = require("fs");

fs.readFile("file.txt", "utf8", (error, data) => {
  if (error) {
    console.error(error);
  } else {
    console.log(data);
  }
});

// Modules
export function someFunction() {
  // Function implementation goes here
}

import { someFunction } from "./module";
someFunction();

const sdfd = `<a class="list-group-item user">${data[i]['username']}</a>`;
