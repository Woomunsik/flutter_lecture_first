// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/CH1/conditional.dart';
import 'package:flutter_lecture_first/CH1/method.dart';
import 'package:flutter_lecture_first/CH1/null_safety.dart';
import 'package:flutter_lecture_first/CH1/operator.dart';
import 'package:flutter_lecture_first/CH1/variable.dart';
import 'package:flutter_lecture_first/CH2/animal/bird.dart';
import 'package:flutter_lecture_first/CH2/animal/dog.dart';
import 'package:flutter_lecture_first/CH2/car/benz.dart';
import 'package:flutter_lecture_first/CH2/car/car.dart';
import 'package:flutter_lecture_first/CH2/coffee/americano.dart';
import 'package:flutter_lecture_first/CH2/coffee/latte.dart';
import 'package:flutter_lecture_first/CH2/person.dart';
import 'package:flutter_lecture_first/CH2/product.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_lecture_first/main.dart';

void main() {
  //Variable();

  //Operator();

  //Method();

  //Conditional();

  //Person person = Person("우문식", 34, 80.0);
  //person.talk();

  //Person person2 = Person("우문식22", 28, 90.5);
  //person2.talk();

  //Person person3 = Person("김군", 10, 50);
  //person3.talk();

  /// person이라는 클래스를 다르게 입력하고 싶다.


  /// 더
  //Product a = Product("선풍기", "더조은회사");

  /// 핸드폰 or 키오스크 화면에서 사용자가 버튼 클릭
  //a.sale();
  //a.sale();
  //a.sale();

  //a.sum();

  //Product computer = Product("컴퓨터", "더조은회사");
  //computer.sale();
  //computer.sale();
  //computer.sale();
  //computer.sale();
  //computer.sale();
  //computer.sale();

  // //Americano americano = Americano("프리미엄 아메리카노", 8000, false, false);
  // //americano.sale();
  // //americano.service();
  // americano.refund();
  //
  // //Latte latte = Latte("저렴한 라떼", 1500, true, true);
  // latte.sale();
  // latte.service();
  // latte.refund();

  // Conditional();
  //
  // /// Bird 클래스 생성
  // Bird bird1 = Bird("비둘기", 2);
  //
  // /// run 함수 호출
  // bird1.run();
  //
  // Dog dog1 = Dog(name: "흰둥이", age: 3);
  // dog1.run();
  // dog1.swim();
  // dog1.eat();
  // dog1.sleep();

  // HomeWorkCar();

  var nulllSafety = NulllSafety();

  nulllSafety.age = 40;
  nulllSafety.name = "홍길동";

  nulllSafety.age2 = null;
  nulllSafety.name2 = null;

  /// nullableTyoe으로 선언을 하면 null로 인식
  ///  non-nullableType인데 초기화를 안하면 오류 발생
  NulllSafety? ns2 = null;

  print('ns2 : $ns2');
}
