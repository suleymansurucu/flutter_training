main() {
  DatabaseTransaction db = FirebaseDb();

  db.userSave();
  db.userUpdate();
  db.userDelete();


}

abstract class DatabaseTransaction {
  void userSave();

  void userUpdate();

  void userDelete();
}

class OracleDb extends DatabaseTransaction {
  @override
  void userDelete() {
    print("User deleted");
  }

  @override
  void userSave() {
    print("user saved");
  }

  @override
  void userUpdate() {
    print("user updated");
  }
}

class FirebaseDb extends DatabaseTransaction{
  @override
  void userDelete() {
    print("User deleted");
  }

  @override
  void userSave() {
    print("user saved");
  }

  @override
  void userUpdate() {
    print("user updated");
  }

}
