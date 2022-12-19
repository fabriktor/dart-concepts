/// ABSTRACT CLASSES ***********************************************
/// good to create a general idea for further classes to extend the abstract class
/// each method should be implemented with @override
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
  var duck = Duck();

  print(duck.isAlive);
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();
}

class Duck extends Animal {
  @override
  void eat() {
    print('Duck eats');
  }

  @override
  void move() {
    print('Duck moves');
  }

  void layEggs() {
    print('Duck lays eggs');
  }
}
