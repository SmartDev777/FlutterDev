import 'dart:io';

/**
 * 1
 * 22
 * 333
 * 4444
 */
void main(List<String> args) {
  String data = "1";
  var count = 1;
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write(count);
    }
    print('');
    count++;
  }
}
