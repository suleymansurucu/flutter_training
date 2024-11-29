import 'dart:io';

main() {
  print("Anne cocugu ekmek almaya gonderir");
  print("Cocuk ekmek almak icin cikar");

  Future<String> result = uzunSurenIslem2();
  result.then((String value) => print(value))
      .catchError((error){
  print(error);
  }).whenComplete(() => print("ekmek alma operasyonu bitti"));

  print("Anne peynir zeytin hazirlar");
  print("kahvalti hazir");

  }



Future<String> uzunSurenIslem2() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 3), () {
    // return "Cocuk ekmegi almis eve gelmis olur";
    throw Exception("Bakkalda ekmek kalmamis");
  });
  return sonuc;
}