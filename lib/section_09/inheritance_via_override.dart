
main() {
  User user1 = User();
  user1.loginSuccesfull();

  RegularUser user2 = RegularUser();
  user2.loginSuccesfull();

  AdminUser user3 = AdminUser();
  user3.loginSuccesfull();

  User user4 = RegularUser();
  User user5 = AdminUser(); // Upcasting

  List<User> allUser = [];

  allUser.add(user1);
  allUser.add(user2);
  allUser.add(user3);
  allUser.add(user4);
  allUser.add(user5);

  loginCheck(user1);
}

void loginCheck(User kullanici) {
  kullanici.loginSuccesfull(); //Poliformizm
}

class User {
  String email = "";
  String password = "";

  void loginSuccesfull() {
    print("You have successfully logged in");
  }
}

class RegularUser extends User {
  void addToFriend() {
    print("You sent to invite friend");
  }

  @override
  void loginSuccesfull() {
    print("Regular User has succesfully logged in");
  }
}

class AdminUser extends User {
  void checkYourUser() {
    print("checked your users");
  }

  @override
  void loginSuccesfull() {
    print("Admin user has succesfully logged in");
  }
}

class ReadOnlyUser extends User {
  void readMarked() {
    print("readed");
  }

  @override
  void loginSuccesfull() {
    print("Read Only User user has succesfully logged in");
  }
}
