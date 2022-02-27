void main() {
 
  print('====Mark Sheet=====');
  
  int sub1=90;
  int sub2=89;
  int sub3=99;
  int sub4=79;
  int sub5=89;
  String grade="";
  
  int obtainedMarks=sub1+sub2+sub3+sub4+sub5;
  
  num percent= obtainedMarks/500*100;
  
  if(percent>90)
  {
    grade="A-one";
  }
  else if(percent>=80)
  {
    grade="A";
  }
  else if(percent>=70)
  {
    grade="B";
  }
  else
  {
    grade="C";
  }
  
  print('You percentage is $percent % and your Grade is $grade');
  
  
  
  
  
}
