void main(List<String> args) {
  String examResult = "CC";

  switch (examResult) {
    case "AA":
      print("Notunuz 90-100 arasindadir");
      break;

    case "BA":
      print("Notunuz 80-90 arasindadir");
      break;

    case "BB":
      print("Notunuz 70-80 arasindadir");
      break;

    case "CB":
      print("Notunuz 60-70 arasindadir");
      break;

    case "CC":
      print("Notunuz 50-60 arasindadir");
      break;

    case "FF":
      print("Notunuz 0-50 arasindadir");
      break;

    default:
      {
        print("Hatali bilgi giridli");
      }
  }
}
