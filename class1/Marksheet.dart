void main() {
  print('========= Mark Sheet =========');

  int sub1 = 90;
  int sub2 = 94;
  int sub3 = 98;
  int sub4 = 88;
  int sub5 = 99;
  var name = "Touseeq";
  int rollNo = 1234;
  String section = "A";
  String institute = "Jawan Pakistan";

  print('\nName      : $name');
  print('Roll No.  : $rollNo');
  print('Section   : $section');
  print('Institute : $institute');
  print('\n');
  print('Subjects');
  print('----------\n');
  print('English      : $sub1 / 100');
  print('Math         : $sub2 / 100');
  print('Chemistry    : $sub3 / 100');
   print('Physics      : $sub4 / 100');
   print('Computer     : $sub5 / 100');
  
  int obtainedMarks=sub1+sub2+sub3+sub4+sub5;
  num percentage=obtainedMarks*100/500;
  
  print('\n');
  print('Result : $name obtained $obtainedMarks Marks out of 500 and your percentage is $percentage %');
    
  
}
