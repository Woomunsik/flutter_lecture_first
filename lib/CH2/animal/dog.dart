import 'package:flutter_lecture_first/CH2/animal/animal.dart';
import 'package:flutter_lecture_first/CH2/animal/dog_interface.dart';

/// 1. siwm 함수 생성
/// 2. 생성자를 다른 방법으로 만들어 볼 것.
class Dog extends Animal implements DogInterface{
  //Dog(super.name, super.age);

  Dog({required String name, required int age }) : super(name, age);

  @override
  void eat() {
    print("강아지 $name이(가) 밥을 먹고 있습니다.");
    // TODO: implement eat
  }

  @override
  void sleep() {
    print("강아지 $name이(가) 자고 있습니다.");
    // TODO: implement sleep
  }

  void swim() {
    print("강아지 $name이(가) 수영하고 있습니다.");
  }

  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void play() {
    // TODO: implement play
  }



  }

