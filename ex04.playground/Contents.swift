import UIKit

//기본 자료형(type), 구조체로 설계됨. 스위프트는 클래스보다 구조체를 더 선호함
//Int, UInt, Float, Double, Bool, Character, String

//Int, 정수형 4바이트 (64비트 운영체제일 경우 8바이트)
var myInt : Int = -10

//UInt, Unsigned Int로, 부호가 없는 정수형. 음수값이 없기 때문에 Int보다 더 넓은 범위의 정수를 표현 가능하다.
var myUInt : UInt = 20

//Float, 실수형 4바이트. 지수부와 가수부
//Double, 실수형 8바이트
var myFloat:Float = 3.141592
let PI:Double = 3.14

//Boolean, 논리형 1바이트. true/false만 존재
var isTrue:Bool = true

//Character, 문자형 2바이트. 유니코드 지원 UFT-8
var myChar:Character = "A"

//String, 문자열. 정해진 크기 없이 가변크기이다. 메모리 제한만큼 늘어난다.
var myString:String = "hello world!"

//print는 안되지만 문자열 끼리 연결 시 + 연산자 사용가능
myString = myString+"!!!!"

//여러줄의 문자열을 연결하는 방법 -> """ 쌍따옴표 세개 사용. \n 으로 줄바꿈
var myMultiString = """
여러분의
문자열을
연결합니다.
"""
print(myMultiString)
