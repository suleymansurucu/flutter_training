/*
# Question - 1 : Create a list of cities. Add and list 4 cities.
# Queetion - 2 : Create a map with the key value as a string and the values ​​as dynamic.
This map structure contains information about the core structure of the computer, the amount of RAM, whether it is an SSD or not,
and prints it on the screen.


 */

main() {
  // #answer - 1
  List<String> cityName = ["Garfield", "Clifton", "Paterson", "Lodi"];
  print(cityName);

  // #answer - 2
  var computerPropitiries = <String,dynamic> {
    "core" : "M4 Pro New",
    "ram" : 32,
    "SSD " : true
  };
  print(computerPropitiries);
}
