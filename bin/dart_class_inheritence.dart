import 'dart_constructors_get_set_init_lists.dart';

/// CLASS INHERITENCE ***********************************************
///extends -> keyword to create a child class
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
  var monsterTruck = MonsterTruck(
    wheelSize: 44,
    model: 'megedeath',
    brand: 'killer machine',
    milesPerGallon: 2,
  );

  print(monsterTruck.stringTruck());
}

class MonsterTruck extends Truck {
  //we use a forwarding constructor, by refering to the mother (super) class, which is Truck, which contains the properties model, brand & milesPerGallon
  MonsterTruck(
      {required this.wheelSize,
      required String model,
      required String brand,
      required int milesPerGallon})
      : super(
          brand: brand,
          model: model,
          milesPerGallon: milesPerGallon,
        );

  final double wheelSize;

  @override
  String stringTruck() {
    return '$brand $model trucks have a MPG of $milesPerGallon and wheels of $wheelSize inches';
  }
}
