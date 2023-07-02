import 'package:flutter_lecture_first/CH2/car/car.dart';
import 'package:flutter_lecture_first/CH2/car/car_interface.dart';

class Sonata extends Car implements CarInterface{

  Sonata(super.price, super.carName, super.owner);

  void fillTheOil() {
    print("$owner이(가) $carName에 주유하고 있습니다.");

  }

  @override
  void sell() {
    print("$owner이(가) $carName을 $price에 판매했습니다.");
    // TODO: implement sell
  }
}