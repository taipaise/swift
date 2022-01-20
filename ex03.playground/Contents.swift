import UIKit

//출력문에는 세가지 종류가 있다.
//print, debugprint, dump

var myStr: String = "Swift Programming"
var myInt: Int = 10
print(myStr)
//Swift Programming 출력
debugPrint(myStr)
//"Swift Programming" 출력 ""를 이용해 문자열임을 알 수 있음

print(myInt)
//10 출력
debugPrint(myInt)
//10 출력

//dump는 그렇게 많이 사용하지는 않음
dump(myStr)

class Student{
    var name:String = "홍길동"
}

var student = Student() //new 키워드 없이 생성자만 사용하여 객체를 생성한다.
print(student)
//__lldb_expr_14.Student 출력됨
debugPrint(student)
//__lldb_expr_14.Student 출력됨
dump(student)
/*▿ __lldb_expr_14.Student #0
- name: "홍길동"
 출력됨. dump는 구조체, 클래스, 열거형 등의 내부까지 자세히 보고 싶을 떄 사용한다.
*/
print(student.name)
//홍길동 출력됨

//문자열 보간: 문자열 연결하기
var age = 24
//print("저의 나이는 " + age) //오류. 자바처럼 +를 이용하지 못함
print("저의 나이는 \(age)입니다.") // \()를 이용하여 이어준다.
print("저의 나이는",age,"입니다.") // 쉼표를 통해서도 이어줄 수 있음. 단 이 경우는 쉼표 앞 뒤로 공백이 자동으로 생긴다.
/*
 위의 문장은
 저의 나이는 24입니다.
 아래 문장은
 저의 나이는 24 입니다.
 라고 출력된다.
 */
