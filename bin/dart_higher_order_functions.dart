/// HIGHER ORDER FUNCTIONS ***********************************************

void main(List<String> arguments) {
  ///mapping a list
  ///we use this method to change every item of a list and make a new list with it
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final doubles = numbers.map((e) => e * 2);
  print(doubles.toList());

  ///.where to filter a collection
  ///we can use .where to filter a list and return for example a list of even numbers
  final evenNumbers = numbers.where((element) => element.isEven);
  print(evenNumbers.toList());

  ///consolidation of a collection
  final totalOfNumbers = numbers.reduce((value, element) => value + element);
  print(totalOfNumbers);

  ///consolidation of a collection
  final totalOfNumbersFold =
      numbers.fold(2, (previousValue, element) => previousValue + element);
  print(totalOfNumbersFold);

  ///sorting a list
  numbers.sort();

  ///combinaison of higher order methods
  final combinedList =
      numbers.map((e) => e - 4).where((element) => element.isNegative).toList();
  print(combinedList);
}
