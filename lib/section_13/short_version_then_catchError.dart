import 'dart:io';

main(){
  print("Anne cocugu ekmek almaya gonderir");
  print("Cocuk ekmek almak icin cikar");
  uzunSurenIslem().then((value)=>print(value)).catchError((hatta)=>print(hatta)).whenComplete(()=>print("Ekmek alma islemi bitti"));
  print("Anne peynir zeytin hazirlar");
  print("kahvalti hazir");

}

Future<String> uzunSurenIslem() {
  return Future.delayed(Duration(seconds: 3), (){
    return"Cocuk ekmegi almis eve gelmis olur";
  });

}