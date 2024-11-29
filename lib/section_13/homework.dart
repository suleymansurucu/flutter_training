main() {
  idyeGoreUserGetir(10).then((Map value) {
    print(value);
    usernameGoreKusrlariGetir(value["username"]).then((List value) {
      String yorum = value[0];
      kursunilkYourumuGetir(yorum).then((yorum) {
        print(yorum);
      });
    });
  });
}

Future<String> kursunilkYourumuGetir(String kursAdi) {
  print("$kursAdi kursunun yorumlari getiriliyor");
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Kurs mukemmel";
  });
}

Future<List<String>> usernameGoreKusrlariGetir(String username) {
  print("$username kullanicisinin kurslari getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["flutter", "kotlin", "java"];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id li kullanici getiriliyor.");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 3), () {
    return {"username": "Suleyman Surucu", "id": id};
  });
}
