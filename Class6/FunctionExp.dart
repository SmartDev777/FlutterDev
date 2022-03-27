void main(List<String> args) {
  var sum = add(5, 6);
  print("sum is $sum");
  var multi = multiply(5, 6);
  print("Multiplication is $multi");
}

int add(int a, int b) {
  return a + b;
}

int multiply(int a, int b) {
  return a * b;
}
