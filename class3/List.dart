void main() {
  List<dynamic> data = [1, 9, 4, 5, 6];

  print("First Element => ${data.first}");

  print("Last Element => ${data.last}");

  var sorted = data.sort();
  print("Sort => ${data}");

  var reversed = List.of(data.reversed);
  print("Reversed => ${reversed}");

  //start range index ,end index , value
  data.replaceRange(data.length - 2, data.length, [7, 8]);
  print("Replace range => ${data}");
}
