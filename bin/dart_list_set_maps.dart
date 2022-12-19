/// LISTS, SETS & MAPS ***********************************************
///lists implements iterable and can contain more than 1 data type
///we can force lists to contain only 1 type of data with explicit declaration <int>
///sets are defined between {} and do not accept duplicate values
///maps are similar to json notation and are just like key-value arrays, iterable ONLY with their keys

void main(List<String> arguments) {
  ///example of MAP
  final statistics = {'winners': 3, 'losers': 4};

  //looping a MAP with keys
  for (var key in statistics.keys) {
    print('$key : ${statistics[key]}');
  }

  //looping a MAP with entries (Entries contain key and value)
  for (var entry in statistics.entries) {
    print('${entry.key} : ${entry.value}');
  }

  //looping a MAP with foreach
  statistics.forEach((key, value) {
    print('$key -> $value');
  });
}
