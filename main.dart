/**
[문제 6]
함수를 활용해보는 문제입니다. Dart 언어를 사용하여, 
두 정수의 곱을 반환하는 함수를 작성하고,
 그 함수를 호출하여 결과를 출력하는 프로그램을 작성해보세요.
 예를 들어, 함수의 이름은 'multiply'로 하고,
  7과 3을 인자로 전달하여 그 곱을 출력해보세요.
*/

num multiply(num a, num b) => a * b;

void main() {
  num c = multiply(7, 3);
  print(c);
}
