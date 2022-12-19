/// SINGLETON PATTERN ***********************************************

void main(List<String> arguments) {
  ///all rocket instances below point to the same instance
  var rocket = Rocket();
  var rocket2 = Rocket();
  var rocket3 = Rocket();
}

class Rocket {
  //we disable default constructor by creating a singleton constructor
  Rocket._();

  //we create an instance of a Rocket
  static final Rocket _instance = Rocket._();

  //we create a factory to instanciate the instance
  factory Rocket() {
    return _instance;
  }
}
