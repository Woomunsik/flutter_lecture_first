
import 'package:flutter_lecture_first/CH2/coffee/coffee.dart';

/// 상속, 부모, 자식
/// Americano클래스가 Coffee 클래스를 상속받았다.
/// Americano 자식, Coffee는 부모 클래스
/// 자식 클래스는 부모클래스의 변수와 함수를 사용할 수 있다.
class Americano extends Coffee {

  /// super 키워드를 사용하면 부모 클래스의 생성자에 연결
  Americano(super.name, super.price, super.isHot, super.takeOut);

}