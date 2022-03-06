import 'dart:io';

void main() {
  print("=======Login Form ========");
  var correctEmail = "touseeq@gmail.com";
  var correctPassword = "123456";
  print("Enter email");
  //take input from user
  var email = stdin.readLineSync();
  print("Enter password");
  var password = stdin.readLineSync();
  if (email != correctEmail) {
    print("incorrect email");
    return;
  }
  if (password != correctPassword) {
    print("incorrect password");
    return;
  }
  print("Login Success");
}
