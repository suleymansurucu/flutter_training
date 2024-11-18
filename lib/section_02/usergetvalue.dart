import 'dart:io';

void main(List<String> args) {
  print("Username");
  String? username = stdin.readLineSync();
  print("Girielen isim= $username");

  print("What is your age?");
  int age = int.parse(stdin.readLineSync()!);
  print("girilen yas: $age");
}
