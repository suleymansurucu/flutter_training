class CircleArea{
  int _radius=1;
  double _Pi = 3.14;

  CircleArea(int radius){
  _checkRadiusValue=radius;
  }
  void set _checkRadiusValue(int value){
    if (value<0){
      _radius=1;
    }else
      _radius=value;
  }
  double calculateAre(){
    return 2*_radius*_Pi;
  }
  double calculatecircumference() {
  return _Pi*_radius*_radius;
  }


}

