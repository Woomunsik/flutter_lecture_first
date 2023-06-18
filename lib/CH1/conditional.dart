class Conditional{

  /// if문
  /// ssitch
  /// 삼항연산자

  Conditional(){

    int result = conditionalIf(50);
    print('result : $result');
    String score = testGrade(85);
    print('등급 : $score');

    String switchResult = testSwitch(70);
    print('switchResult');
  }

  int conditionalIf(int value){
    int result = 0;
    // do something

   return result;
   }

  String testGrade(int score) {
    String grade = "F";

    if (score >=90) {
      grade = "A";
    } else if (score >= 80) {
      grade = "B";
    } else if (score >= 70) {
      grade = "C";
    } else if (score >= 60) {
      grade = "D";
    } else {}

   return grade;

  }

  /// If 문은 범위 체크 가능
  /// Switch 문은 동일한 값을 체크
  /// score 라는 변수의 값을 체크하려는 목적
  String testSwitch(int score) {
    String grade = "F";
    
    switch(score) {
      case 90:
        // score의 값이 90인 경우
      grade = "A";
        break;
      case 80:
        // score의 값이 80인 경우
      grade = "B";
        break;
      case 70:
        grade = "C";
        // score의 값이 70인 경우
        break;
      default:
        grade = "No data";
        break;

    }
  return grade;
  }
} 