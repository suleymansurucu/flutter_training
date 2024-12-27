enum Gender { WOMEN, MEN, UNKNOWN }

enum MyColors { YELLOW, BLUE, RED, GREEN, ORANGE }

class UserInformation {
  final String name;
  final Gender gender;
  final List<String> colors;
  final bool isStudent;

  UserInformation(this.name, this.gender, this.colors, this.isStudent);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'gender': Gender.values,
      'colors': colors,
      'isStudent': isStudent
    };
  }

  UserInformation.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        gender = Gender.values.firstWhere((element) =>
        element.name.toString() == json['gender']),
        colors = List<String>.from(json['colors']),
        isStudent=json['isStudent'];
}

