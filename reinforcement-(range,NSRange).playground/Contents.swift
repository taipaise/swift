import UIKit

//range는 시작 값과 끝 값이 명확한 범위를 나타내는 타입이다
var range1 :ClosedRange = 1...10  //1이상 10 이하. 정수형 closed range 타입이다.
type(of: range1)
var range2 = 1.0...10.0 //1.0 이상 10.0 이하. 실수형 closed range이다.
type(of: range2)
print(range2)
//var range1 : Range = 1...10 은 오류

var range3 = 1..<10 //1이상 10미만. 정수형 range이다.
type( of: range3)

//연습문제1. 정수 10은 1..<10에 포함되는지 출력하시오
var myValue : Int = 10
if (1..<10).contains(myValue){
    print("Y")
}
else{
    print("N")
}

//NSRange : 연속적인 개념을 가지는 객체 (String에서 character들, 배열의 원소들 등)중 일정 부분을 표현하기 위해 고안되었다.
//location(시작점), length(길이)로 이루어져 있으며, 이 두가지 요소 모두 Int 타입이다. 나타내는 범위는 [location,location+length)이다.
//문자열의 범위를 다룰 때는 NSRange를 자주 사용함
