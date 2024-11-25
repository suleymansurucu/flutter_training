main(){

  SchoolInformation information=SchoolInformation("Eda Mihriban Sari", 8888);
  information.returnToInformation();

  SchoolInformation info1=Teacher("Fatma Sara", 123);
  info1.returnToInformation();

  Teacher info2 = Teacher("deneme", 213);
  info2.changeToPhoneNumber(444);




}

class SchoolInformation{
  String name;
  int phoneNumber;
  SchoolInformation(this.name,this.phoneNumber){
    print("School Information called to contruction");
  }
  void returnToInformation(){
print("Name is  $name, Phone number is $phoneNumber");
  }
}

class Teacher extends SchoolInformation{
  Teacher(super.name, super.phoneNumber){
    print("Teacher contruction started");
  }
@override
  void returnToInformation() {
    print("*********");
    print("Name is $name, Phone number is $phoneNumber");
  }

  void changeToPhoneNumber (int? newPhoneNumber){
    print("last phone number is $phoneNumber");
    this.phoneNumber=newPhoneNumber!;
    print("New phone number is $phoneNumber");
  }

}