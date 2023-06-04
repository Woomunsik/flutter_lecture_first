class Operator {
  /// 연산 : 산술(사칙), 증감, 비교, 논리
  /// 산술 : 사칙연산
  /// 증감 : 더하고 빼고
  /// 비교 : ~보다 큰지/ 작은지/ 같은지/ 같거나 큰지
  /// 논리 :  and, or, not, equal, not equal
  Operator() {
    add();

    minus();

    divide();

    multiple();

    arithmetic();

    compare();

    typeCheck();

    typeCasting ();

  }

  /// 더하기
  void add() {
    int age = 0;
    age = 10 + 10; //20
    print('add : $age'); // add : 20
    age += 30;
    print('add 2 : $age');
  }

  void minus() {
    int age = 0;
    age = 100 - 50; //50
    print("minus : $age");
    age -= 10; //40
    print("minus2 : $age");
  }

  void divide() {
    double age = 5 / 2; //2.5
    print("divide age : $age");

    int age2 = 5 ~/ 2; // 2
    print("divide age2 : $age2");

    double age3 = 5 % 2; // 2.5dptj 0.5 반올림
    print("divide age3 : $age3");
  }

  void multiple() {
    int age = 10 * 3;
    print("multiple age : $age");
  }

  // 증감 = 증가 or 감소
  void arithmetic() {
    double weight = 82.5;
    ++weight;
    print('arithmetic weihgt : $weight');
    //--weight;
    //--weight;
    //--weight;
    //--weight;
    //--weight;
    weight -= 5;
    print('arithmetic weihgt 2 : $weight');

    print('arithmetic weight 3 : ${++weight}');
    print('arithmetic weight 4 : ${weight++}');
    print('arithmetic weight 5 : ${weight}');
  }

  //비교
  void compare() {
    int p1 = 10;
    int p2 = 20;

    // p1이 10이랑 같은가?, equal
    // = : 데이터를 입력
    // == : 같은지 체크
    print('p1 == 10 : ${p1 == 10}'); // true
    print('p1 == p2 : ${p1 == p2}'); // false

    // != : not equal
    print('p1 != 10 : ${p1 != 10}'); //false
    print('p1 != p2 : ${p1 != p2}'); //true

    // 큰지 작은지
    print('p1 > p2 : ${p1 > p2}'); //false
    print('p1 < p2 : ${p1 < p2}'); //true

    // 크거나 같은지, 작거나 같은지
    print('p1  >= 10 : ${p1 >= 10}'); //true
    print('p1  <= 10 : ${p1 <= 10}'); //true
  }

  // 타입 체크
  // int, Stimg, bool, double

  void typeCheck() {
    int age = 34;
    String name = "우문식";

    print('age is int : ${age is int}'); //true

    print('age is String : ${age is String}'); //False

    print('age is! bool : ${age is bool}'); //False

    print('age is double : ${age is! double}'); //true

  }

  /// 형변환(타입 변환)
  void typeCasting (){
    int age = 34;
    print('typecasting age : $age');

    double age2 = age.toDouble();
    print('typeCasting age2 : $age2');

    String age3 = age.toString();
    print('typeCasting age3 : $age3');

  }
}