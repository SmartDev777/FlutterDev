void main(List<String> args) {
  var data = 23;

  List digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  List special = ['/', '(', ')'];

  if (digits.contains(data)) {
    print("Digit");
  } else if (special.contains(data)) {
    print('Special charater');
  } else {
    print('Alphabet');
  }
}
