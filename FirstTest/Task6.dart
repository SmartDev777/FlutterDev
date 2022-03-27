void main(List<String> args) {
  var data = "23";
  final alphanumeric = RegExp(r'^[a-zA-Z]+$');
  final digits = RegExp(r'^[0-9]+$');
  if (digits.hasMatch(data)) {
    print("Digit");
  } else if (alphanumeric.hasMatch(data)) {
    print('Alphabet');
  } else {
    print('Special charater');
  }
}
