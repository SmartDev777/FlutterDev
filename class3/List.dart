void main() {
  List<dynamic> data = [1, 9, 4, 5, 6];

  print("First Element => ${data.first}");

  print("Last Element => ${data.last}");

  var sorted = data.sort();
  print("Sort => ${data}");

  var reversed = List.of(data.reversed);
  print("Reversed => ${reversed}");

  //start range index ,end index , value
  //update the last value in array
  data.replaceRange(data.length - 1, data.length, [7]);
  print("Replace range => ${data}");
}
