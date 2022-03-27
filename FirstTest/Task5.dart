/**
 * Minimum distance between two numbers
 */

void main(List<String> args) {
  List<int> data = [7, 9, 5, 11, 7, 4, 12, 6, 2, 11];

  //map for keeping value and counts
  Map minimumDistances = Map<String, num>();

  for (int i = 0; i < data.length; i++) {
    for (int j = i + 1; j < data.length; j++) {
      minimumDistances.putIfAbsent(
          "${data[i]}-${data[j]}", () => data[i] - data[j]);
    }
  }
  num minumDistance;

  List distances = [];
  //Now finding the majority Minimum distance from map values
  minimumDistances.forEach((key, value) {
    distances.add(value);
  });
  distances.sort();
  print(distances.first);
}
