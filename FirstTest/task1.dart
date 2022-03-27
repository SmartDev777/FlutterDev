/**
 * Facctorial of number 
 */

void main(List<String> args) {
  //5*4*3*2*1
  var result = 1;
  var num = 5;
  for (int i = num; i > 1; i--) {
    result = result * i;
  }
  print("Factorial of given number $num is $result");
}
