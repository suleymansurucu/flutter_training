main(){

  Map<String,dynamic> map=Map();
  Map<String,dynamic> map2={};
  var map3= <String,dynamic>{};

  map['id']=4;
  map['isim']="Suleyman";
  map['renk']="Yesil";
  print(map);
  var newMap=Map.from({'deger': 'yeni'});
  print(newMap);

  var list=[1,2,3,4];
  var mapFrpmIterable =Map<String,String>.fromIterable(list, key: (item){
    return "$item";
  }, value: (item) => "${item *2}");
  print(mapFrpmIterable);

  map.update('id', (value) => value*3, ifAbsent: ()=> 100);
  print(map);

  map.putIfAbsent('surname', () => "Surucu");
  print(map);

}