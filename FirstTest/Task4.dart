/**
 * Write program to find the majority element of an array
 */
void main(List<String> args) {
  List data = [1, 3, 3, 7, 4, 3, 2, 3, 3];

  List elements = [];
  for (int i = 0; i < data.length; i++) {
    for (int j = 0; j < data.length; j++) {
      var count = 0;
      if (data[i] == data[j]) {
        count++;
      }
      elements.add(count);
    }
  }
  print(elements);
}
