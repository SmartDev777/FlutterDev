/**
 * Sum of sreies
 */
void main(List<String> args) {
  List data = [1, 5, 9, 13, 17, 21, 25, 33, 38];

  num sum = 0;
  for (int index = 0; index < data.length; index++) {
    sum += data[index];
  }

  print(sum);
}
