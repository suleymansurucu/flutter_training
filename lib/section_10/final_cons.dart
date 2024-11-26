
main(){

  // Final variable is not change, this variable standart. Once time using;
  /*
  final String name="Suleyman";
  name = "Surucu";
   */
  // constant variable is not change, this variable standart. Once time using;
  /*
  const String surname="Surucu";
  surname = "Suleyman";
*/


  // the example is list for final variable. Final variable is not reading the inside, just look the address
  final myListFinal= [1,2,3];
  final myListFinal2=[1,2,3];

  if (myListFinal==myListFinal2){
    print("Same Values");
  }else
    print("it is not same values");


  const myListConst = [4,5,6];
  const myListConst2 = [4,5,6];

  if (myListConst==myListConst2){
    print("Same Values");
  }else
    print("it is not same values");


  myListFinal.add(4);

  // Constant variable should not put the new values.

  //  myListConst.add(5);


}