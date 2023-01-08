# Integer data types
signed char a = -128; // 8-bit signed
unsigned char b = 255; // 8-bit unsigned
signed short c = -32768; // 16-bit signed
unsigned short d = 65535; // 16-bit unsigned
signed int e = -2147483648; // 32-bit signed
unsigned int f = 4294967295; // 32-bit unsigned
signed long g = -9223372036854775807; // 64-bit signed
unsigned long h = 18446744073709551615; // 64-bit unsigned

# Floating point data types
float i = 3.14; // 32-bit floating point
double j = 3.14159265358979323846; // 64-bit floating point

# Character data type
char k = 'A';

# Array data type
int l[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

# Pointer data type
int* m = &l[0];

# Structure data type
struct Point {
  int x;
  int y;
};
struct Point n = {1, 2};

# Union data type
union Number {
  int i;
  float f;
};
union Number o;

# Keywords
#define PI 3.14

#ifndef PI
#define PI 3.14
#endif

#ifdef PI
#undef PI
#define PI 3.14159265358979323846
#endif

#if PI > 3.14
#error "PI is too big"
#endif

#pragma GCC optimize ("O2")

#include <stdio.h>

int main(void) {
  // Conditionals
  int x = 5;
  if (x > 3) {
    printf("x is greater than 3\n");
  } else if (x < 3) {
    printf("x is less than 3\n");
  } else {
    printf("x is equal to 3\n");
  }

  // Control flow
  for (int i = 0; i < 10; i++) {
    printf("%d\n", i);
  }

  int y = 5;
  while (y > 0) {
    printf("%d\n", y);
    y--;
  }

  // Loops
  int z = 0;
  while (1) {
    printf("This loop will run forever until it is broken\n");
    if (z > 10) {
      break;
    }
    z++;
  }

  return 0;
}

#include <stdio.h>

// Functions
int add(int x, int y) {
  return x + y;
}

// Enums
enum Weekday {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday
};

enum Weekend {
  Saturday,
  Sunday
};

enum Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
};

int main(void) {
  // Function call
  int sum = add(1, 2);
  printf("%d\n", sum);

  // Enum values
  printf("%d\n", Monday);
  printf("%d\n", Tuesday);
  printf("%d\n", Wednesday);
  printf("%d\n", Thursday);
  printf("%d\n", Friday);
  printf("%d\n", Saturday);
  printf("%d\n", Sunday);

  return 0;
}

#include <stdio.h>

// Structures
struct Point {
  int x;
  int y;
};

// Objects
struct Point p = {1, 2};

// Built-ins
sizeof(int);

int main(void) {
  // Structure fields
  printf("%d\n", p.x);
  printf("%d\n", p.y);

  // Built-in function
  printf("%lu\n", sizeof(int));

  return 0;
}

#include <stdio.h>
#include <string.h>

// Error handling
#define LENGTH 10
int get_length(char* s) {
  if (s == NULL) {
    fprintf(stderr, "Error: String is null\n");
    return -1;
  }
  if (strlen(s) > LENGTH) {
    fprintf(stderr, "Error: String is too long\n");
    return -1;
  }
  return strlen(s);
}

// File operations
void write_file(char* filename, char* s) {
  FILE* fp = fopen(filename, "w");
  if (fp == NULL) {
    fprintf(stderr, "Error: Cannot open file\n");
    return;
  }
  fprintf(fp, "%s\n", s);
  fclose(fp);
}

// Modules
#include "mymodule.h"

int main(void) {
  // Error handling
  printf("%d\n", get_length("hello"));
  printf("%d\n", get_length(NULL));
  printf("%d\n", get_length("12345678901"));

  // File operations
  write_file("example.txt", "Hello, world!");

  // Module function
  mymodule_function();

  return 0;
}
