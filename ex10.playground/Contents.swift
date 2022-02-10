import UIKit

//변수의 값(value) 타입과 참조(reference)타입
//값 타입: 변수 안에 실제 data가 존재. 대입 연산(=)만으로 값의 복사가 가능하다.
//참조 타입: 변수 안에 실제 data가 아닌 그 값을 가진 메모리 주소값을 가진다. 대입 연산(=)으로 값을 복사하면 실제 값이 아니라 주소 값이 복사된다.

//Swift에는
//값 타입: 기본자료형(Int, Float, Double, Bool, String) =>구조체로 설계되어 있다.
//       구조체, 열거형, 딕셔너리, 배열, 집합은 값 타입이다.
//참조 타입: 클래스(class), NS류의 자료형들 (NSString, NSInt - Objective C에서 사용됨)
//NS란? Next Step의 약자. 애플과 맥의 OS 기초를 만든 회사 이름

//스위프트는 값 타입을 선호한다. 값 복사가 편하기 때문이다.

//구조체(Struct) : C언어의 구조체보다 확장된 개념. 변수와 함수를 사용가능. 값 타입으로 설계. 복사가 간편
//열거형(Enum) : 구조체와 마찬가지로 변수와 함수 사용 가능. 값 타입으로 설계. 복사가 간편
//클래스(Class) : 자바처럼 변수와 함수 사용가능.  참조 타입으로 설계. 복사가 복잡. 상속이 가능하다는 장점이 있다.
//언뜻 보면 모두 비슷해보이지만

//구조체 VS 클래스

//구조체의 객체 생성
struct MyStruct{
    var age : Int = 30
}
class MyClass{
    var age = 30
}

let myStruct  = MyStruct() //스위프트에는 new키워드가 사라짐!
var myStruct2 = myStruct //age의 실제 value가 복사됨
myStruct2.age = 24
print(myStruct.age)//30 출력
print(myStruct2.age)//24 출력
//이로서 myStruct와 myStruct2는 각각 다른 메모리 공간에 할당되어 있음을 알 수 있다.

let myClass = MyClass()
let myClass2 = myClass
myClass2.age = 24
print(myClass.age)
print(myClass2.age)//모두 24가 출력된다.
//위 경우 myClass의 주소값이 전달되기 때문에 myClass2의 age를 바꾸면 myClass의 age값도 바뀐다.
