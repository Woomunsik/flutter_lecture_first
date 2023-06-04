class Conditional{

  /// if문
  /// ssitch
  /// 삼항연산자

  Conditional(){

    int result = conditionalIf(50);
    print('result : $result');
    String result = testGrade(85);
    print('등급 : $result');

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
}