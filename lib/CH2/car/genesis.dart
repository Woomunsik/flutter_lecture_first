import 'package:flutter_lecture_first/CH2/car/car.dart';

class Genesis extends Car {

  Genesis(super.price, super.carName, super.owner);


  void washTheCar() {
    print("$owner이(가) $carName을(를) 세차하고 있습니다.");

  }
}