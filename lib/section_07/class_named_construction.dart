main(){

  var bmw=Car(2024, "BMW", true);
  bmw.calculateAgeOfCar();
  bmw.returnPropertiesForCar();

  var audi = Car.WithoutMake(true, "AUDI");
  audi.calculateAgeOfCar();
  audi.returnPropertiesForCar();


}

class Car{
 int? make;
 String? model;
 bool isAutomatic;

 Car(this.make,this.model,this.isAutomatic){

   print("contruction called...");
 }

 void returnPropertiesForCar () {
   print("car Make: ${make} ,Model${model}, is it Automatic ${isAutomatic}");
 }
 Car.WithoutMake(this.isAutomatic,this.model){
   print("car is Model${model}, is it Automatic ${isAutomatic}");
 }

 void calculateAgeOfCar(){
   if(make != null){
     print("The car is ${2025 - make!},...");
   }else {
     print("Car did'not write to make, You should write to make of car");
   }

 }


  }

