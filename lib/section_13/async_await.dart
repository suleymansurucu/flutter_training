main(){
print("Internetten kisi verisini getirme islemi");
kisiVerisiniGetir();
print("Baska isler yapilacak");

print("islem bitti");

}

void kisiIleIlgiliIslemler() async{
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir(){
  return Future<String>.delayed(Duration(seconds: 5), (){
   return "Isim verisini getir";
  });
}