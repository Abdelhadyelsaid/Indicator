import 'package:flutter/foundation.dart';
class Changevalue with ChangeNotifier{

  double x_axis;
  double y_axis;
  double speed;
  double Accesslration;
  Changevalue({required this.x_axis,required this.y_axis,required this.speed,required this.Accesslration});
}
class ChangeValueTo with ChangeNotifier{
  Changevalue _changevalue =new Changevalue(
    x_axis: 0.0,
    y_axis: 0.0,
    speed: 0.0,
    Accesslration: 0.0
  );
  Changevalue get changeValueTo{
    return _changevalue;
  }
  void changevalue(Changevalue value){
    _changevalue.x_axis=value.x_axis;
    _changevalue.y_axis=value.y_axis;
    _changevalue.speed=value.speed;
    _changevalue.Accesslration=value.Accesslration;
    notifyListeners();
  }
}