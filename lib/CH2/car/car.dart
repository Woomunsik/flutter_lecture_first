import 'package:flutter_lecture_first/CH2/car/benz.dart';
import 'package:flutter_lecture_first/CH2/car/sonata.dart';

class HomeWorkCar {
  HomeWorkCar() {

    Benz benz1 = Benz(50000, "C500", "우문식");
    benz1..repair()..sell()..brake();

    Sonata sonata1 = Sonata(2000, "손이", "우문식2");
    sonata1..acceleration()..brake()..fillTheOil()..sell();

  }
}

abstract class Car {

  double price;

  String carName;

  String owner;

  Car(this.price, this.carName, this.owner);

  void acceleration() {
    print("$carName이(가) 달리고 있습니다.");
  }

  void brake(){
    print("$carName이(가) 정지 했습니다.");
  }


}