import UIKit

//스위프트 언어의 중요한 특징
//옵셔녈 변수의 중요한 특징
//옵셔널 Optional - 널 체크, Null exception의 발생 빈도를 줄이기 위함.
//옵셔널은 nil의 가능성을 명시적으로 표현하여, 문서화하지 않아도 코드만으로 그 가능성을 표현가능하게 한다.
//전달 받은 값이 옵셔널 변수가 아니라면 nil체크를 하지 않더라도 안심하고 사용할 수 있다. 따라서 안전하다.
/*
 자바에서의 널 체크
 myObj라는 객체가 있다고 하자
 
 if(myObj == null){
    return;
 }
 
 과 같은 식으로 진행한다.
 */

var myNum1 : Int = 10 //변수 선언시 10으로 초기화 했기 때문에 nil이 아님
//var myNullalbe = nil 문법 오류
var myNullalbe :Int? = nil //명시적으로 널일 수 도 있고 아닐 수도 있음을 선언해야한다.
print(myNum1)
print(myNullalbe) //nil이 출력된다.

//옵셔널 변수를 안전하게 사용하는 방법 : Null Exception을 피하는 방법
//1. 옵셔널 바인딩 -if let 구문을 사용
//2. 가드 문장 - guard let, guard else 구문을 사용

//Optional Binding
myNullalbe = 20
if let newInt = myNullalbe{ //newInt를 사용하여 널일 수도 있는 변수/참조변수의 널 여부를 안전하게 확인할 수 있음
    //  is not null
    print("not null")
}
else{
    //is null
    print("is null")
}

//강제 언래핑 Forced unwrapping
//nil임을 감수하고, 또는 nil이 아님을 확신하고 실제 값을 빼오는 것을 의미한다.
print(myNullalbe) //Optional(20)으로 출력된다. 20이라는 값만 얻고 싶다면?
print(myNullalbe!)//뒤에 느낌표 ! 를 붙여주면 된다.
//! 연산자 : 널 값이 아니라는 확신이 있어야 한다. 아니면 null exception이 발생한다.

//연습문제
//옵셔널 문자열 변수 myStr을 선언하고, "Hello"를 초기값으로 할당하고 옵셔널 바인딩(if let)을 활용하여 myStr의 값을 출력하시오

var myStr : String? = "Hello"
if let newStr = myStr{
    print("not nil")
}
else{
    print("nil")
}
print(myStr!)

var myStr2 : String? = nil
if let newStr = myStr2{
    print("not nil")
}
else{
    print("nil")
}
//print(myStr2!) 오류!
 
