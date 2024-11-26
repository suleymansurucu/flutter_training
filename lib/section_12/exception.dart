main(){

  print("Application started");
  try{
    int result = 10 ~/int.parse("Suleyman");
    print(result);
  } on IntegerDivisionByZeroException{
    print("You can not use 0");
  } on FormatException catch (e){
    print(e.message);
    print(e.source);
  }

  catch(e) {
    print(e.toString());
  } finally{
    print("progress finished");
  }


  print("Application finished");



}