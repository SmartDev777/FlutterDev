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
  if (email == correctEmail && password == correctPassword) {
    print("Login success");
  } else {
    print("Incorrect username or password");
  }
}
