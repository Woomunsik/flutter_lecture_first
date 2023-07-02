import 'package:flutter_lecture_first/CH2/car/car.dart';
import 'package:flutter_lecture_first/CH2/car/car_interface.dart';

class Benz extends Car implements CarInterface{

  Benz(super.price, super.carName, super.owner);


  void repair() {
    print("$owner이(가) $carName을(를) 수리했습니다.");

  }

  @override
  void sell() {
    print("$owner가 $carName을 $price에 판매했습니다.");
  }
}