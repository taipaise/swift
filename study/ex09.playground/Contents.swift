import UIKit

//반복문
//for문, while문, reapeat while문

//자바의 for 문 for(초기화; 조건문; 중감문) ->스위프트에서 사라짐
//스위프트는 파이썬과 같이 범위 연산자를 통해 for문을 구현

//1~10 까지 출력
for i : Int in 1...10{
    print(i)
}

//0~99까지 출력
/*
for i : Int in 0...100{
    print(i)
}
 */
//1. 10~35까지 출력하시오
for i : Int in 10...35{
    print(i)
}
//100~0까지 출력하시오
for i in (0...100).reversed(){ // :Int를 명시하지 않아도 입력된 값이 정수기 때문에 정수
    print(i)
}
print("")
//1~100까지 2씩 증가하여 출력하시오
for i in stride(from: 1, to: 100, by: 2){
    print(i)
}
//100~1까지 2씩 감소하여 출력하시오
for i in stride(from: 100, to: 1, by: -2){
    print(i)
}

print("")
//배열
var arrayInt = [1,2,3,4,5]
for i in arrayInt{
    print(i)
}


//for문으로 딕셔너리(Dictionary) 값을 순환하기
//딕셔너리: 자바 Map과 동일한 자료구조(Key - Value)
let persons = ["john":1000, "tom":2000, "hong":3000] // 딕셔너리도 대괄호로 사용, Key값은 항상 string이 들어간다.
print(persons["john"]) //persons[john]이 널일 수도 있기 때문에 optional로 출력됨
print(persons["john"]!)// 뒤에 !를 붙여주어서 강제 언래핑

for(name, money) in persons{
    print(name)
    print(money)
}//언래핑까지 자동으로 해줌

//while문
var index : Int = 0
while index < 10{
    if index % 2 != 0{
        print(index)
    }
    index += 1
}

var index2 : Int = 0
index = 0
print("")
for i in stride(from:0, to:100, by:2){
        print(i)
}
while index2 <= 100{
    if index2 % 2 == 0{
        print(index2)}
    index2 += 1
}

while(true){
    print(index)
    if(index == 10){
        break
    }
    index += 1
    }
//다른 언어와 같이 break 문과 continue 문 모두 사용이 가능하다.


print("\n\n")
var index3 : Int = 0
while true{
    if index3 % 2 != 0 {
        index3 += 1
        continue
    }
    if index3 > 90{
        break
    }
    print(index3)
    index3 += 1
}

//repeat while문 : 자바의 do while 문과 비슷함
//조건을 나중에 쓰기 때문에 적어도 한번 반복문을 실행하게 됨
var index4 : Int = 0
print("\n\n")
repeat{
    print(index4)
    index4 += 1
}while(index4 < 10)


//구구단 출력
for i in 2...9{
    for j in 1...9{
        print(i,"*",j,"=",i*j) //또는 print("\(i)*\(j)=\(i*j)")
    }
}
print("\n\n\n")
//레이블 구문 : 탈출지점을 알려줌
//이중, 삼중 For 문에서 break는 기본적으로 탈출시 자신이 속한 loop만 탈출함. 레이블 구문을 이용해서 원하는 for문을 탈출할 수 있다.
var count :  Int = 1
OUTER: for i in 1...10{
    for j in 1...10{
        if j == 3{
            break OUTER
        }
        print(count)
        count += 1
    }
}
