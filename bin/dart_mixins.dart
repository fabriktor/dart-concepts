import 'dart:async';

/// MIXINS ***********************************************
/// the purpose of mixins is to avoid code repetition when multiple extends of a same class occurs
/// the abstracts methods to be overrided will be taken from mixins, with 'with'
///
/// EXTENDS: A class extends another one. @override MUST be utilized
/// overriding existing methods IS NOT necessary if the extended class is NOT abstract!
/// overriding existing methods IS MANDATORY if the extended class is an abstract class!
/// the class to be extended can be an ABSTRACT or NORMAL class
/// only 1 class can be extended
///
/// IMPLEMENTS: A class implements another one.
///overriding existing methods IS MANDATORY! Without the @override keyword
/// the class to be implemented MUST be an abstract class, with abstract methods
/// @override IS NOT NECESSARY, because implements keyword implicitely implies that all abstract methods have to be redefined with a body
/// more than 1 abstract class (interface) can be implemented

void main(List<String> arguments) {
  var cardinal = Cardinal();
  var snake = Snake();
  print('cardinal: ${cardinal.layEggs()}');
  print('cardinal: ${cardinal.fly()}');
  print('snake: ${snake.layEggs()}');
}

//we create an abstract class to be extended
abstract class Bird {
  void fly();
  void layEggs();
}

//we create an abstract class to be extended
abstract class Reptile {
  void layEggs();
}

//we have to override both methods, since they are abstract methods and a non-abstract class cannot have abstract methods!
class HummingBird extends Bird {
  @override
  void fly() {
    print('Hummingbirds flies fast!');
  }

  @override
  void layEggs() {
    print('Hummingbirds lay small eggs!');
  }
}

//here we have to override all methods of Bird, since Bird is an abstract class, and not a class!
class Penguin extends Bird {
  @override
  void fly() {
    print('Penguins do not fly!');
  }

  @override
  void layEggs() {
    print('Penguins lay big eggs!');
  }
}

///what is the problem with not using mixins? in the above classes, we overrided each method 2 times.
///let's solve the problem with MIXINS:

mixin Flyer {
  String fly() => 'It flies!';
}

mixin EggLayer {
  String layEggs() => 'It lays eggs!';
}

///now, let's use the mixins with a cardinal bird and a snake

class Cardinal extends Bird with EggLayer, Flyer {}

class Snake extends Reptile with EggLayer {}

//run main() to see results
