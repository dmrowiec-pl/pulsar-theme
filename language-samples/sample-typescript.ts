// Declaring a boolean value
const isTrue: boolean = true;

const varUndefined = undefined;

const varNull = null;

// Declaring a number value
const myNumber: number = 42;

// Declaring a string value
const myString: string = 'Hello, world!';

// Declaring an array of numbers
const myNumberArray: number[] = [1, 2, 3, 4, 5];

// Declaring an array of strings
const myStringArray: string[] = ['a', 'b', 'c'];

// Declaring a tuple
const myTuple: [string, number] = ['hello', 42];

// Declaring an enum
enum Color {
  Red,
  Green,
  Blue,
}




const sdsdf = Color.Blue;

let sdf = Color.Red;

// type: ignore
my_funct(Color.Green);





// Declaring an object type
interface Point {
  x: number;
  y: number;
}


// Declaring a class
class Person {
  name: string;
  age: number;
}

// Declaring a function type
type MyFunctionType = (x: number, y: number) => number;

// Declaring a union type
type MyUnionType = string | number;

// Declaring the any type
let myAnyValue: any = 'hello';
myAnyValue = 42;

// Declaring the unknown type
let myUnknownValue: unknown = 'hello';
myUnknownValue = 42;

// Declaring a variable with the let keyword
let myVariable = 'Hello';

// Using the const keyword
const MY_CONSTANT = 'This is a constant';

// Using the if keyword to create a conditional statement
if (myVariable === 'Hello') {
  console.log('myVariable is equal to "Hello"');
} else {
  console.log('myVariable is not equal to "Hello"');
}

// Using the switch keyword to create a control flow statement
switch (myVariable) {
  case 'Hello':
    console.log('myVariable is equal to "Hello"');
    break;
  case 'World':
    console.log('myVariable is equal to "World"');
    break;
  default:
    console.log('myVariable is not equal to "Hello" or "World"');
}

// Using the for keyword to create a loop
for (let i = 0; i < 10; i++) {
  console.log(i);
}

// Using the while keyword to create a loop
let j = 0;
while (j < 10) {
  console.log(j);
  j++;
}

// Using the do-while keyword to create a loop
let k = 0;
do {
  console.log(k);
  k++;
} while (k < 10);


/**
 * This is a docstring for the Animal class.
 * It describes the properties and behavior of animal objects.
 */
 class Animal {
  /** The name of the animal */
  name: string;

  /**
   * Creates a new Animal instance.
   * @param name The name of the animal.
   */
  constructor(name: string) {
    this.name = name;
  }

  /**
   * Makes the animal make a noise.
   * @returns The noise the animal makes.
   */
  makeNoise(): string {
    return 'Some noise';
  }
}

/**
 * This is a docstring for the Dog class.
 * It describes the properties and behavior of dog objects.
 */
class Dog extends Animal {
  /** The breed of the dog */
  breed: string;

  /**
   * Creates a new Dog instance.
   * @param name The name of the dog.
   * @param breed The breed of the dog.
   */
  constructor(name: string, breed: string) {
    super(name);
    this.breed = breed;
  }

  /**
   * Makes the dog make a noise.
   * @returns The noise the dog makes.
   */
  makeNoise(): string {
    return 'Bark';
  }
}

/**
 * This is an enum for the different types of pets.
 */
enum PetType {
  Cat,
  Dog,
  Fish
} "sdf"; true; /sdfsdf/

/**
 * This is a function that takes a pet type and creates a new pet of that type.
 * @param type The type of pet to create.
 * @returns A new pet instance.
 */
function createPet(type: PetType): Animal {
  switch (type) {
    case PetType.Cat:
      return new Animal('Fluffy');
    case PetType.Dog:
      return new Dog('Fido', 'Labrador');
    case PetType.Fish:
      return new Animal('Goldie');
  }
}
let abcd = /sdfdf/i;


import * as fs from 'fs';

/**
 * This is a namespace that contains utility functions for working with strings.
 */
namespace StringUtils {
  /**
   * Returns the length of a string.
   * @param str The string to get the length of.
   * @returns The length of the string.
   */
  export function getLength(str: string): number {
    return str.length;
  }

  /**
   * Reverses the characters in a string.
   * @param str The string to reverse.
   * @returns The reversed string.
   */
  export function reverse(str: string): string {
    return str.split('').reverse().join('');
  }
}

const person = {
  name: 'John',
  age: 30
};

/**
 * This is a decorator that logs a message before and after a method is called.
 * @param target The prototype of the class the decorator is applied to.
 * @param propertyKey The name of the method the decorator is applied to.
 * @param descriptor The descriptor for the method.
 */
function logMethod(target: any, propertyKey: string, descriptor: PropertyDescriptor) {
  const originalMethod = descriptor.value;
  descriptor.value = function(...args: any[]) {
    console.log(`Starting ${propertyKey} with args: ${args}`);
    const result = originalMethod.apply(this, args);
    console.log(`Finished ${propertyKey} with result: ${result}`);
    return result;
  }
}

/**
 * This is a class that represents a bank account.
 */
class BankAccount {
  /** The balance of the account */
  balance: number;

  /**
   * Creates a new BankAccount instance.
   * @param balance The initial balance of the account.
   */
  constructor(balance: number) {
    this.balance = balance;
  }

  @logMethod
  /**
   * Makes a deposit to the account.
   * @param amount The amount to deposit.
   * @returns The new balance of the account.
   */
  deposit(amount: number): number {
    this.balance += amount;
    return this.balance;
  }

  @logMethod
  /**
   * Makes a withdrawal from the account.
   * @param amount The amount to withdraw.
   * @returns The new balance of the account.
   */
  withdraw(amount: number): number {
    this.balance -= amount;
    return this.balance;
  }
}

const account = new BankAccount(1000);
account.deposit(500);
account.withdraw(200);

const message = `Hello, ${person.name}! You are ${person.age} years old.`;
console.log(message);
console.log(StringUtils.getLength(message));
console.log(StringUtils.reverse(message));

const fileData = fs.readFileSync('file.txt', 'utf8');
console.log(fileData);

import * as fs from "fs";

function divide(x: number, y: number): number | undefined | null {
    try {
        if (y === 0) {
            throw new Error("division by zero is not allowed");
        }
        return x / y;
    } catch (error) {
        console.log(error.message);
        return undefined;
    }
}

async function readFile(filename: string): Promise<string> {
    try {
        const data = await fs.promises.readFile(filename, "utf8");
        return data;
    } catch (error) {
        console.log(`could not read file ${filename}`);
        return "";
    }
}

// error handling
console.log(divide(10, 0));  // prints "division by zero is not allowed"

// file operations
fs.writeFileSync("test.txt", "Hello, World!");

readFile("test.txt").then(data => {
    console.log(data);  // prints "Hello, World!"
});

// modules
import { getCurrentDirectory } from "./utils";
console.log(getCurrentDirectory());  // prints the current working directory
