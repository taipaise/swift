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
var myString: String  = "hong"
//문자열의 길이
myString.count //.count로 길이를 알 수 있다.
let str1 : String = "Apple"
let str2 : String = "banana"

//문자열의 비교1
if str1 == str2 {//이 경우 value 값을 직접 비교
    print("문자열이 같음")
}
else{
    print("문자열이 다름")
}
//문자열의 비교2
let result = str1.compare(str2)
switch result{
    case ComparisonResult.orderedSame:
        print("same")
    case ComparisonResult.orderedAscending:
        print("bigger")
    case ComparisonResult.orderedDescending:
        print("smaller")
    default :
        print("..")
}

//문자열 연결 : +연산자 (+의 양쪽이 모두 문자열 타입일 경우 덧셈이 아닌 문자열 연결 연산자로 동작함)
print(str1 + str2)
//.appending() 함수를 사용하는 법도 있다.
print(str1.appending(str2))

//문자열에서 특정 문자 하나를 가지고 올때
let text = "abc"
//print(text[0]) 처럼 배열과 같이 index로 접근하여 사용할 수는 없다
let index = text.index(text.startIndex, offsetBy: 0) //text의 시작 주소로부터, 0만큼 떨어진 것. 즉 a라는 값을 가진다.
let char : Character = text[index]// 이렇게 바로 index를 숫자로 넣어서 사용할 수는 없고 index 타입값을 넣어서 접근할 수 있다.

//문자열의 순환
for i in text{
    print(i)
}


//문자형 변수
let char2 : Character = "A" //문자 하나도 쌍따옴표를 사용. 쌍따옴표만 사용 가능!
let char3: Character = Character("A") //윗 줄과 같은 결과.

//문자열의 양 끝에 문자열을 추가하기
var myName2 : String = "tom"
myName2.insert("?", at: myName2.endIndex)// .startIndex하면 문자열의 시작, .endIndex하면 문자열의 끝
myName2.insert("!", at: myName2.startIndex)
//문자열의 중간에 추가하기
let index2 = myName2.index(myName2.startIndex, offsetBy: 1)
myName2.insert(contentsOf:"My", at: index2)

myName2 = "tom"
//문자열 연결 연산자를 이용
let myName3 = "My name is " + myName2


//문자열을 전부 삭제
var myString2: String = "Swift Programming"
myString2.removeAll() //문자열 모두 삭제
//myString2 = "" 도 같은 결과

//문자열을 일부분만 삭제
var myString3: String = "Swift Programming"
let result2 = myString3.removeFirst() // myString3.removeFirst()에는 myString3의 맨 앞글자가 삭제되었고, result2에는 S로 초기화된다.
print(myString3)//wift Programming이 출력된다.

myString3 = "Swift Programming"
let removeIndex = myString3.index(myString3.startIndex, offsetBy: 3)//3번째 index, 즉 F이다.
let result3 = myString3.remove(at: removeIndex)
let index3 = myString3.index(myString3.startIndex, offsetBy: 2)
myString3.insert(result3, at: index3)//f를 삭제하고, 원래 자리에 다시 넣어서 출력
print(myString3)

//문자열을 범위로 한번에 삭제하기
var myString4 : String = "Swift Programming"
let range = myString4.index(myString4.endIndex, offsetBy: -10) ..< myString4.endIndex
type(of: range) //range의 타입은 range
//let mySubString = myString4.removeSubrange(range) 왜 삭제된 부분으로 mySubString이 초기화가 안되는지 질문
myString4
//type(of: mySubString)

//문자열 검색
let myString5 : String = "Swift Programming"
if myString4.contains("Swift"){
    print("find")
}
else{
    print("unmatched");
}
//또는 if let(옵셔널 바인딩)을 통해서도 가능하다.
if let range = myString5.range(of: "Swift"){
    print("문자열 찾음\(range)") //Range가 nil이 아니기 때문에 문자열이 있음
}
else{
    print("문자열 없음", range)
}


//문자열 분리(split)
let myString6 = "1,2,3,4,5,6" //문자열의 분리에는 구분의 기준이 필요함
let arrayStr: [Substring] = myString6.split(separator: ",") //Substring형 배열의 형식으로 분리되어 저장됨
for str in arrayStr{
    print(str)
}
print("")
let arrayStr2: [String] = myString6.components(separatedBy: ",")
for str in arrayStr2{
    print(str)
}

