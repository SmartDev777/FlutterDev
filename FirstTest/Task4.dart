/**
 * Write program to find the majority element of an array
 */
void main(List<String> args) {
  List data = [1, 3, 3, 7, 4, 3, 2, 3, 3];

  int majorityElementCount = 1;
  var majorityElement = 0;
  Map elements = Map<int, int>();
  for (int i = 0; i < data.length; i++) {
    var count = 0;
    for (int j = 0; j < data.length; j++) {
      if (data[i] == data[j]) {
        count++;
      }
    }
    elements.putIfAbsent(data[i], () => count);
  }

  print(elements);

  elements.forEach((key, value) {
    if (majorityElementCount < value) {
      majorityElementCount = value;
      majorityElement = key;
    }
  });
  print(majorityElement);
}
