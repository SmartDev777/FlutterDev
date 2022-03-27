import 'dart:io';

/**
 * While loop
 */
void main(List<String> args) {
  
  var abc="yes";
  while(abc=="yes")
  {
    var email=stdin.readLineSync();
     var password=stdin.readLineSync();
     if(email=="test@gmail.com"&&password=="12344")
     {
       print("Login success");
       abc="no";
     }
     else{
       print("Login success");
       abc=stdin.readLineSync()!;
     }
  }
}