void main(List<String> args) {
  for (int i = 2; i < 10; i++) {
    prrintTable(i);
  }
}

prrintTable(int table) {
  for (int i = 0; i < 10; i++) {
    var ans = table * i;
    print("$table * ${i + 1} = $ans");
  }
}
