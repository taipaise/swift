import UIKit

//문자열 관련 함수

//swift에서 사용 가능한 문자열 타입
//String : 스위프트 구조체 타입
//NSString : Objective - C의 NS계열 클래스 타입

//값 복사를 간편하게 하기 위해서(대입 연산자를 이용) 스위프트의 String을 사용할 것을 권장!

//NSString을 String으로 변경하여 사용할 수 있음
let myNSString: NSString = "Tom"
let mySwiftString: String = String(myNSString)

//String을 NSString으로 변환하여 사용할 수도 있음
let myNSString2 = NSString(string: mySwiftString)

//문자열 관련 함수들
