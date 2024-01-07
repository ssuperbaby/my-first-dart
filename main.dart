/**
[문제 17]
Dart 언어를 사용하여, 함수와 Optional Parameter를 활용하는 문제입니다.\
 이름과 나이를 인자로 받는 'introduce'라는 함수를 작성해보세요.
  이때, 나이는 Optional Parameter로 처리하되,
   나이가 주어지지 않은 경우에는 "안녕하세요, 제 이름은 [name]입니다."라고 출력하고,
    나이가 주어진 경우에는
     "안녕하세요, 제 이름은 [name]이고, 나이는 [age]입니다."라고 출력되도록 하세요.
*/
void main() {
  Map<String, dynamic> kim = {
    "name": "Kim",
    "age": 19,
  };
  for (var A in kim.entries) {
    print("${A.key}는 ${A.value}");
  }
}
