/// FUNCTIONS ***********************************************
///
///the main function of every dart program is main()
void main(List<String> arguments) {
  //positioned parameters
  printName('Phil');

  //optional parameters
  printOptionalName('Phil');
  printNullableOptionalName('Phil');
  printNullableOptionalName('Phil', 'Bob');

  //named parameters
  printNamedName(namedName: 'Phil');
  printNullableNamedName();
  printDefaultNamedName();

  //mixed parameters
  printMixedOptionalName('Phil');
  printMixedNamedlName('Phil', namedName: 'Paul');

  //print method using callback function
  print(addNumbers(1, 2));

  //custom function using callback function
  useCallback((concatenate('Philippe', 'B')));

  //custom function using an instantly invoked function
  useCallbackNow(() {
    return 'Hey World!';
  });

  ///inner function
  ///since applyMultiplier return a function that requires parameters too, we assign the function to quadruple
  ///then we recall quadruple with an argument, in our case, 2.
  Function quadruple = applyMultiplier(4);
  int answer = quadruple(2);
  print('The quadruple of 2 is $answer');
}

///positioned parameters
///those parameters are the basic way to define parameters inside a function
void printName(String newName) {
  print('The name is $newName');
}

///optional parameters with default value
///those parameters can be omited
///they must be put after any positioned parameters, between []
void printOptionalName(String newName, [String optionalName = 'Bob']) {
  print(
      'The positioned name is $newName and the optional name is $optionalName');
}

///optional parameters (nullable)
///those parameters can be omited
void printNullableOptionalName(String newName, [String? optionalName]) {
  print(
      'The positioned name is $newName and the optional name is $optionalName');
}

///named parameters
///those parameters require to be called using their name (key) with :
///they are the building blocks of flutter because flutter use constructors to build Widget objects
///constructors use named parameters
void printNamedName({required String namedName}) {
  print('The named name is $namedName');
}

///named parameters (nullable)
void printNullableNamedName({String? namedName}) {
  print('The named name is $namedName');
}

///named parameters with default value
void printDefaultNamedName({String namedName = 'Bob'}) {
  print('The named name is $namedName');
}

///mixed parameters (positioned and optional)
///to mix types of parameters, positioned parameters must be first in the function definition
void printMixedOptionalName(String name, [String? optionalName]) {
  print('The positioned name is $name and the optional name is $optionalName');
}

///mixed parameters (positioned and named)
void printMixedNamedlName(String name, {String namedName = 'Bob'}) {
  print('The positioned name is $name and the optional name is $namedName');
}

///anonymous functions
///we can treat those functions as variables, but we have to assign them to variables first, or pass them as callbacks by directly typing them as a function argument
Function addNumbers = (int a, int b) {
  return a + b;
};

///another anonymous function returning a string
Function concatenate = (String a, String b) {
  return '$a $b';
};

///anonymous functions and callbacks
///we use a callback function returning a string inside a declared function
void useCallback(String callback) {
  print(callback);
}

///callback function
void useCallbackNow(Function callback) {
  print(callback.call());
}

///inner functions
///a function returning another function
Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}
