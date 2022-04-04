import UIKit

//변수와 상수
//스위프트에서 변수는 var 를 사용
//상수는 let을 사용한다. (letter의 약자)

//변수의 선언
//var 변수이름 : 자료형(변수타입) = 값(변수) //자료형은 꼭 써줄 필요는 없음
var myVar1 = 10 //이 경우 타입 추정이 이루어지며, 정수형이 됨
var myVar2: Int = 10 //타입의 명시적 선언

//상수의 선언
let myLet1 = 10
let myLet2: Int = 10
//myLet1 = 20 은 상수이므로 오류
let PI = 3.14 //원주율
let G = 9.8 //중력 가속도

//한 줄에 변수를 여러 개 선언할 수 있음
var myVar3, myVar4, myVar5: Double
myVar3 = 10
myVar4 = 20
myVar5 = 30

//변수 이름 짓는 법
//일반 변수, 함수 이름 : 소문자로 시작하는 것을 권장, 단어가 이어질 때 대문자로 시작
//ex) student, count, countOfStudent

//클래스, 구조체, 열거형 : 영대문자로 시작함. Camel Texting 이라고 함.
//ex) Student, Count

//상수는 모두 대문자로 하는 것을 권장

