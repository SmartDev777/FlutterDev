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
    var k=i+1;
    String data = k.toString();

    for (int j = i; j < i + 1; j++) {
      data = data + i.toString();
    }
    print(data);
    count++;
  }
}
