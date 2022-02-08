import UIKit

//연산자 Operator
//연산자 우선 순위 : 산술 > 비교 > 논리 > 대입
var result  = 10 + 2 - 3 / 4 * 7

//이항 연산자
//산술 : +, -, *, /, %   산술연산의 결과가 값으로 나온다.
//비교 : ==, !=    연산의 결과가 true / false로 나온다
//논리 : &&, ||, !  연산의 결과가 true/false로 나온다.
//대입 : =, +=, -=, *=, /=, %=    연산의 결과가 값으로 나온다.

//증감 연산자(단항 연산자) ++, --는 스위프트에서 없어짐.
//따라서 var++는 var = var + 1 또는 var += 1 로 해야함.
var myInt : Int = 10
myInt += 1 //myInt = myInt + 1

//삼항 연산자 (? : 연산자)
var myBool : Bool = (10 < 20) ? true : false //true 값이 들어감

//?? 연산자. 앞의 값이 null이면 뒤의 값을 기본값(디폴트)로 전달한다.
var name: String? = nil
name = "taipaise"
print(name ?? "홍길동") //민약 name의 값이 nil이면 홍길동을 출력, nil이 아니면 name의 값을 출력한다. 옵셔널 변수에 쓰인다.

//범위 연산자(Range Operater) 파이썬의 범위와 유사함
//시작값...종료값으로 구성함
let range = 1...10
print(range)
for i : Int in range{
    print(i)
}

let range2 = 1..<10 //1부터 9까지의 값
for i:Int in range2{
    print(i)
}
//거꾸로 하고 싶으면 reverse 함수 사용
for i in range.reversed(){
    print(i)
}
