void main() {
  // Variables
  print(variableFun());
}

String variableFun() {
  dynamic useAnyDataType = "string";
  print(useAnyDataType);

  const valueA = 7;
  const valueB = 2 * valueA;
  print(valueB);

  var buffer = StringBuffer() ;

  for (var i = 0 ; i < 100 ; i++) {
    buffer.write('$i');
    print(buffer);
  }
  var value = buffer.toString();
  return "VariableFun"; }
