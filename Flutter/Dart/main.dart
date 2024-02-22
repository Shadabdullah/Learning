void main() {
  test( 5 ,  5);
  // Variables
  print(variableFun());
}

String variableFun() {
  dynamic useAnyDataType = "string";
  print(useAnyDataType);

  const valueA = 7;
  const valueB = 2 * valueA;
  print(valueB);

  var buffer = StringBuffer();

  for (var i = 0; i < 100; i++) {
    buffer.write('$i');
    print(buffer);


  }

  var value = buffer.toString();
  return "VariableFun";
}

void test(int a, int b) {
print("$a");
print("$b");} 
