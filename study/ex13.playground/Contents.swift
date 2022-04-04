import UIKit
import Foundation

//콜렉션 Collection
/*
 1. 리스트-List : 배열 + 리스트. 자바의 arraylist와 유사. 다만 배열의 특징과 리스트의 특징을 모두 가지고 있다. 자바처럼 배열과 리스트를 굳이 나누지 않음
 2. 딕셔너리-Dictionary : key와 value를 나란히 가지는 자료구조. 자바의 map과 유사
 3. 집합 - Set : 집합 구조. 자바의 set과 유사.
 */

//Array : 같은 type으 data가 나란히 배열된 구조. 순서 있음.
//      Int배열, String 배열, 구조체 배열, 객체(클래스) 배열 등이 있음
//배열을 선언하는 방법
//1
var array1 : Array<Int> = Array<Int>()
//2
var array2 : Array<Int> = [] //많이 쓰이는 방법
//3
var array3 : [Int] = [] //많이 쓰이는 방법
//4
var array4 = Array<Int>() //type 추정이 일어나서 정수형 배열이 생성됨
//5
var array5 = [Int]() //type 추정이 일어나서 정수형 배열이 생성됨

var array6 : Array<Int> = []
array6.append(10)
array6.append(20)
array6.append(30)
array6.append(40)
print(array6)

//배열의 포함 여부 알아보기
if array6.contains(50){
    print("Y")
}
else{
    print("N")
}
//배열의 길이
print("length of array6 is",array6.count)
//배열의 요소 삭제
array6.remove(at: 0) //인덱스 0번 삭제. 10이 삭제됨
array6
array6.removeLast()//마지막 요소를 삭제. 40이 삭제됨
array6
array6.removeAll()//전체 요소 삭제
array6

//배열의 중간에 요소 추가하기
array6.insert(50, at: 0) // 넣을 요소, index 순서대로 입력
array6.insert(60, at: 1)

if array6.isEmpty{
    print("배열이 비어있습니다.")
}
else{
    print("배열이 비어있지 않습니다.")
}

//배열의 순환
for i in array6{
    print(i)
}

//연습문제
var names : Array<String> = []
names.append("tom")
names.append("john")
names.append("hana")
print("배열의 길이는 \(names.count)")
for i in names{
    print(i)
}
var a : Int = 0
while a < names.count{
    if names[a] == "john"{
        print(names[a])
    }
    a += 1
}
if names.contains("tom"){
    print("tom은 배열에 있습니다.")
}
else{
    print("tom은 배열에 없습니다.")
}

//배열 요소의 인덱스를 가져올때
if let index : Int = names.firstIndex(of: "tom"){
    print("tom's index is ",index)
}

//배열 관련 자료형
//NS계열 : NSArray - 쓰기 불가 읽기만 가능.
//        NSMutableArray - 읽기 쓰기 가능
//Swift 계열 : Array (var-읽기 쓰기 가능, let : 읽기만 가능)

//NSArray의 경우 Array로 변환
var myNSArray : NSArray = NSArray(objects: "a", "b", "c")
//NSArray를 NSMutableArray로 바꾸어주어야 함.
var myNSMutableArray : NSMutableArray = NSMutableArray(array: myNSArray)
//NSMutableArray를 swift array로 변환
if let myArray : Array = myNSMutableArray as NSArray as? Array<String>{ //NSMutableArray 에서 NSArray로 , 다시 Array로 변환
    print(myArray)
}
//as 는 형 변환 연산자
//as?의 경우 옵셔널 형변환. 널이 아니면 변환하라는 의미

//Array를 NSMutableArray로 변환
var myArray2: [String] = ["a","b","c"]
var myNSMutableArray2 = NSMutableArray(array: myArray2)
//Array를 NSArray로 변환
var myNSArray2 = NSArray(array: myArray2)

//배열의 값 비교
let myArray3 : [Int] = [1,2,3,4,5]
let myArray4 : [Int] = [1,2,3,4,5]
if myArray3 == myArray4{
    print("equal")
}
else{
    print("unequal")
}

//배열의 값을 치환하기
var myArray5 = ["a","b", "c"]
myArray5.replaceSubrange(0...1, with: ["x","y"]) //0...1 대신 0..<2도 가능.  배열이름.replaceSubrange( range, with: 바꿀 배열) 형식이다.

//배열의 값 정렬
var myArray6 = ["나","가", "다"]
let sortedArray = myArray6.sorted() //정렬
type(of: myArray6.sorted().reversed())
let sortedArray2 = Array(myArray6.sorted().reversed()) //역순으로 정렬

//특정 범위에서 요소를 추출해서 배열을 만들 수 있음
let rangeArray = sortedArray[0...1] //배열이름[range]를 통해 간단하게 추출할 수 있음

//구조체, 객체(클래스) 배열 만들기.
struct MyStruct{
    var name = "Hong"
    var age = 30
    func myFunc(){
        print("함수 호출됨")
    }
}

//구조체를 배열로 만들기
var myStructArray : [MyStruct] = []
var myStruct1 = MyStruct()
var myStruct2 = MyStruct()
myStructArray.append(myStruct1)
myStructArray.append(myStruct2)

for myStruct in myStructArray{
    print(myStruct.name, myStruct.age)
    myStruct.myFunc()
}
