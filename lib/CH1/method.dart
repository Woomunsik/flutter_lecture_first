class Method {
  Method() {
    int age = add();
    print('Method.Method age : $age');

    double result = calculate(10, 20); //22.5
    print('Method.Method result : $result');

    String kk = introduce(name: "우문식", name2: "woomunsik");
    print('Method.Method kk : $kk ');

    var o = optional("우문식");
    print('ooo : $o');

    // 2개의 숫자를 더한 다음에 나누기 2를 하고
  }

  /// 1. 2개의 int 타입 값을 받으세요.
  /// 2. 2개의 숫자를 더하세요.
  /// 3. 나누기 2를 하세요.
  double calculate(int a, int b){
    return ((a + b) / 2) * 1.5;
  }

  // 리턴타입 함수이름 구현부
  // int     add()   {}
  // void = 리턴 타입 없다
  int add() {
    // do something
    return 30;
  }

  String introduce({
    required String name,
    required String name2,
  }) {
    return "안녕하세요. $name입니다.";
  }

  String optional(String a,{String b = "빈 값"}) {
    return "$a, $b, 잘 부탁드립니다.";
  }
}