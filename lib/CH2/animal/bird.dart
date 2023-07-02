import 'package:flutter_lecture_first/CH2/animal/animal.dart';
import 'package:flutter_lecture_first/CH2/animal/dog_interface.dart';
import 'package:flutter_lecture_first/CH2/animal/item.dart';

import 'animal_interface.dart';

class Bird extends Animal with Item, Item2 implements AnimalInterface, DogInterface {
  
  /// 생성자
  /// 생성자는 해당 클래스를 생성할 때 사용하는 함수
  /// suoer 라는 키워드는 부모 클래스의 생성자의 값을 입력
  Bird(super.name, super.age);
  
  /// override : 부모 클래스에 있는 함수를 구현 한다는 의미
  @override
  void eat() {
    // do something
    // TODO: implement eat
  }

  @override
  void sleep() {
    // TODO: implement sleep
  }

  /// 고급
  @override
  void run() {
    // TODO: implement run
    
    /// super라는 키워드는 부모클래스의 것을 사용할 수 있음
    /// super.run(); 호출하면 부모 클래스의 run 함수를 호출하는 것
    //super.run();
    print('Bird 클래스의 run');
  }

  @override
  void hunting() {
    // TODO: implement hunting
  }

  @override
  void rest() {
    // TODO: implement rest
  }

  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void play() {
    // TODO: implement play
  }

  @override
  void wakeUp() {
    // TODO: implement wakeUp
  }

  @override
  void talk() {
    // TODO: implement talk
    super.talk();
  }

  @override
  void nothing() {
    // TODO: implement nothing
  }

}