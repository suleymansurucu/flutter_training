import 'dart:io';

main(){
  print("Anne cocugu ekmek almaya gonderir");
  uzunSurenIslem();
  print("Anne peynir zeytin hazirlar");
  print("kahvalti hazir");

}

void uzunSurenIslem() {
  print("Cocuk ekmek almak icin cikar");
  Future.delayed(Duration(seconds: 3), (){
    print("Cocuk ekmegi almis eve gelmis olur");
  });

}