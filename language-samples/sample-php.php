<?php

// Integers
$a = 1234;
$b = -1234;
$c = 0x1234;
$d = 0123;

// Floats
$e = 1.234;
$f = -1.234;
$g = 1.2e3;
$h = 7E-10;

// Strings
$i = "Hello, world!";
$j = 'Hello, world!';

$name = 'John';
$age = 30;
echo "{$name} is {$age} years old.";

// Booleans
$k = true;
$l = false;

// Arrays
$m = array(1, 2, 3, 4, 5);
$n = [1, 2, 3, 4, 5];

// Objects
class Test {
  public $property = "Hello, world!";
}

$o = new Test();

// Resources
$p = fopen("file.txt", "r");

// NULL
$q = null;

echo $a;
echo $b;
echo $c;
echo $d;
echo $e;
echo $f;
echo $g;
echo $h;
echo $i;
echo $j;
echo $k;
echo $l;
print_r($m);
print_r($n);
var_dump($o);
var_dump($p);
var_dump($q);

?>

<?php

// Keywords
class MyClass {
  const MY_CONST = 123;

  public $property = "Hello, world!";

  public function myMethod() {
    echo $this->property;
  }

  public static function myStaticMethod() {
    echo self::MY_CONST;
  }
}

interface MyInterface {
  public function myMethod();
}

trait MyTrait {
  public function myMethod() {
    echo "Hello, world!";
  }
}

// Conditionals
$a = 123;

if ($a > 100) {
  echo "a is greater than 100";
} elseif ($a > 50) {
  echo "a is greater than 50";
} else {
  echo "a is not greater than 50 or 100";
}

// Switch
$b = "hello";

switch ($b) {
  case "hello":
    echo "b is hello";
    break;
  case "world":
    echo "b is world";
    break;
  default:
    echo "b is neither hello nor world";
    break;
}

// Control flow statements
$c = 0;

while ($c < 10) {
  echo $c;
  $c++;
}

do {
  echo $c;
  $c++;
} while ($c < 20);

for ($i = 0; $i < 10; $i++) {
  echo $i;
}

foreach ($m as $value) {
  echo $value;
}

break;
continue;
return;

?>


<?php

/**
 * This is a docstring for the MyClass class.
 */
class MyClass {
  const MY_CONST = 123;

  public $property = "Hello, world!";

  /**
   * This is a docstring for the myMethod() method.
   */
  public function myMethod() {
    echo $this->property;
  }

  /**
   * This is a docstring for the myStaticMethod() method.
   */
  public static function myStaticMethod() {
    echo self::MY_CONST;
  }
}

/**
 * This is a docstring for the MyFunction() function.
 */
function MyFunction() {
  echo "Hello, world!";
}

// Functions
MyFunction();

// Classes
$obj = new MyClass();
$obj->myMethod();
MyClass::myStaticMethod();

// Inheritance
class MyChildClass extends MyClass {
  public function myChildMethod() {
    echo "Hello from MyChildMethod()!";
  }
}

$childObj = new MyChildClass();
$childObj->myMethod();
$childObj->myChildMethod();

// Enums
abstract class MyEnum {
  const MY_ENUM_VALUE_1 = 1;
  const MY_ENUM_VALUE_2 = 2;
  const MY_ENUM_VALUE_3 = 3;
}

echo MyEnum::MY_ENUM_VALUE_1;
echo MyEnum::MY_ENUM_VALUE_2;
echo MyEnum::MY_ENUM_VALUE_3;

?>

<?php

// Imports
use My\Full\Classname as Alias;
use My\Full\NSname;
use function My\Full\functionName;
use const My\Full\CONSTANT;

// Namespaces
namespace My\Name;

class MyClass {
  const MY_CONST = 123;

  public $property = "Hello, world!";

  public function myMethod() {
    echo $this->property;
  }
}

function myFunction() {
  echo "Hello, world!";
}

const MY_CONST = 123;

// Objects
$obj = new MyClass();
$obj->myMethod();

// Decorators
class MyDecorator {
  protected $object;

  public function __construct($object) {
    $this->object = $object;
  }

  public function myMethod() {
    $this->object->myMethod();
  }
}

$decorator = new MyDecorator($obj);
$decorator->myMethod();

// Structures
$array = [1, 2, 3, 4, 5];

list($a, $b, $c, $d, $e) = $array;

echo $a;
echo $b;
echo $c;
echo $d;
echo $e;

// Built-in functions
echo strlen("Hello, world!");
echo strpos("Hello, world!", "world");
echo gettype($array);
echo is_array($array);
echo in_array(3, $array);
echo count($array);
echo implode(",", $array);

?>

<?php

// Error handling
try {
  $a = 123 / 0;
} catch (Exception $e) {
  echo "Exception: " . $e->getMessage();
}

// File operations
$file = fopen("file.txt", "r");

if (!$file) {
  throw new Exception("Unable to open file!");
}

$line = fgets($file);

fclose($file);

echo $line;

// Modules
echo PHP_VERSION;
echo PHP_OS;
echo PHP_SAPI;

?>
