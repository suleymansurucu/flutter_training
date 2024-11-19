main() {
  Map<String, int> areaCountry = {
    "US": 1,
    "Turkiye": 90,
    "Germany": 54,
    "Guatemala": 504
  };
  print(areaCountry);
  print(areaCountry["US"]);

  Map<String, dynamic> user = {
    "name": "Suleyman",
    "age": 29,
    "DOB": "September 1995",
    "marriedStatus": true
  };
  List number = [1, 2, 3];

  Map<String, dynamic> example = Map();
  Map<String, dynamic> example2 = {};

  example2["age"] = 30;
  print(example2);
  print(user["age"]);

  for (String keyValue in user.keys) {
    print(keyValue);
    print(user[keyValue]);

    for (dynamic values in user.values){
      print(values);
    }
    for(var element in user.entries){
print("Key : ${element.key} Value : ${element.value}");
    }
  }
}