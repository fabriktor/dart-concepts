/// CONSTRUCTORS ***********************************************

void main(List<String> arguments) {
  //initialize a jeep wrangler
  print(Car('wrangler', 'jeep').toString());

  //initialize a jeep wrangler with named constructor using named parameters
  print(Car.named(model: 'wrangler', brand: 'jeep').toString());

  //initialize a jeep wrangler with its named constructor
  print(Car.wrangler().toString());

  //initialize a jeep cheerookee
  print(Car.cherookee().toString());

  //initialize a truck
  print(Truck(brand: 'Chevy', model: 'Silverado', milesPerGallon: 18)
      .stringTruck());

  //is the truck fuel efficient?
  var truck = Truck(brand: 'Chevy', model: 'Silverado', milesPerGallon: 18);
  print(
      '${truck.stringTruck()} and is it fuel efficient?: ${truck.isEconomic.toString()}');

  //initiate a fuel efficient truck and use getter to return true or false about fuel efficiency
  var efficientTruck =
      Truck(brand: 'Ford', model: 'Maverick', milesPerGallon: 12);
  print(
      '${efficientTruck.stringTruck()} and is it fuel efficient?: ${efficientTruck.isEconomic.toString()}');

  //change the color of efficientTruck with the setter
  efficientTruck.truckNewColor = 'yellow';
  print('The fuel efficient truck is ${efficientTruck.color}');
}

class Car {
  String? model;
  String? brand;

  //override the general methode toString() wich belong to the mother class Object
  @override
  String toString() {
    return 'The car is a $brand $model';
  }

  //conventional construtor
  // Car(String model, String brand){
  //   this.model = model;
  //   this.brand = brand;
  // }

  //quick constructor
  Car(this.model, this.brand);

  //named constructor with named parameters
  //this is THE MOST EFFECTIVE AND CLEAR WAY to create a concise constructor
  Car.named({
    required this.model,
    required this.brand,
  });

  //named constructors
  //if constructor already exists
  Car.wrangler() {
    brand = 'jeep';
    model = 'wrangler';
  }

  //forwarding constructors
  //a simpler way to create multiple named constructors to avoid repetition
  Car.cherookee() : this('cherookee', 'jeep');
}

/// GETTERS & INITIALIZERS ***********************************************

class Truck {
  //properties below MUST be final, so that they are immutable, once initialized during runtime
  final String _model;
  final String _brand;
  final int _milesPerGallon;
  //Color is nullable, required for my setter example
  String? _color;

  //initializer list below, with assert keyword to apply filtering rules when initializing objects
  Truck({
    required String model,
    required String brand,
    required int milesPerGallon,
  })  : assert(milesPerGallon > 0),
        _model = model,
        _brand = brand,
        _milesPerGallon = milesPerGallon;

  //Getters
  String get model => _model;
  String get brand => _brand;
  int get milesPerGallon => _milesPerGallon;
  String? get color => _color;

  //Boolean getter (To evaluate a variable, returning true or false)
  bool get isEconomic => _milesPerGallon < 15;

  //Setters - Would not be possible if the variable was final and already initialized
  set truckNewColor(String color) => _color = color;

  String stringTruck() {
    return '$_brand $_model trucks have a MPG of $_milesPerGallon';
  }
}
