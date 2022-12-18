/// LOOPS ***********************************************
///
///the main function of every dart program is main()
void main(List<String> arguments) {

//foreach loop
const values = [1, 3, 5, 7, 9];
var doubleValues = [];
values.forEach((element) {
  doubleValues.add(element * 2);
});
print(doubleValues.toString());
doubleValues.clear();

//for in loop
for(var element in values){
  doubleValues.add(element * 3);
}
print(doubleValues.toString());
doubleValues.clear();

//traditional for loop with index
for(int i = 0; i < values.length; i++){
  doubleValues.add(values[i] * 4);
}
print(doubleValues.toString());
doubleValues.clear();

}
