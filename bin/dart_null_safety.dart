/// NULLABILITY ***********************************************
///We can add ? to allow nullability. Not a good practice...
///We can add a default value to a variable. Not a good practice...
///What to do so?
///Use required keyword in front of the parameters in constructors, methods and functions.

void main(List<String> arguments) {
  //null aware operator
  String? name;
  double? price;
  double newPrice = price ?? 10;

  //null aware assignment, faster method than the operator above
  price ??= 5;

  print('$price');
  print('$newPrice');

  //null aware ACCESS - To access properties IF value IS NOT null
  print(name?.length);
  name = 'Bob';
}
