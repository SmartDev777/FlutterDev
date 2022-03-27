/**
 * Minimum distance between two numbers
 */

void main(List<String> args) {
  List data = [7, 9, 5, 11, 7, 4, 12, 6, 2, 11];

  List distances = [];
  data.sort();

  print(data);

  for (int i = 0; i < data.length; i++) {
    for (int j = i + 1; j < data.length; j++) {
      distances.add(data[i] - data[j]);
    }
  }
  print(distances);
}
