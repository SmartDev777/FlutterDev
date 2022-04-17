void main() {
  // Human model = Human("Touseeq", 12313213213);
  // Human model = Human(name: "Touseeq", cnic: 12313213213);
  // print(model.printBioData());
  // print("Hello world");
  Male model = Male();
  print(model.name);
}

class Human {
  String? name = "";
  int age = 0;
  int? cnic = 234324324;
  String edu = "";

  // Human(this.name, this.cnic) {}
  Human({this.name, this.cnic}) //for optional
  {}
  String printBioData() =>
      "Your name is ${this.name} \n Your cnic is ${this.cnic}";
}

//Inheritance Exmaple
class Male extends Human {

Male()

  riding() {
    print("$name is riding");
  }
}

//Named Constructor 

// Class SmartPhone{
//   String company="";
//   String color="";
//   int size=0;

// SmartPhone(this.company,this.size,this.color)
// {

// }

// SmartPhone.Tablet(this.company,this.size)
// {

// }

// }
