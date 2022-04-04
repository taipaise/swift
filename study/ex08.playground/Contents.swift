import UIKit

//조건문 if문, switch문

//if 문 4가지 패턴
//1. 단일 if문
//2. if else문
//3. if else if문
//4. 중첩(duplicated) if문 - if안의 if문

//단일 if ans
if true{// 소괄호가 없다. 단 중괄호는 생략이 불가능 하다.
    
}

//if else 문
if false{//거짓일 경우
    
}
else if true{//첫번째 조건(false) 가 아니고 두번째 조건일 경우(true일 경우)
    
}
else{//위 두 조건이 모두 아닐 경우
    
}

//중첩 if문
if true{
    if false{
        
    }
    else{
        
    }
}

//랜덤 값 발생
let randomNum: UInt32 = arc4random_uniform(100)// 0~99까지의 값을 랜덤하게 발생. arc4random_uniform 함수를 사용하면 쉽게 얻을 수 있다. UInt32란 32비트 크기의 unsigned int이다. 매우 큼
//UInt를 Int로 형변환
let intValue : Int = Int(randomNum)

//로또 번호는 1~45의 번호를 랜덤하게 뽑음
let lottoNum : UInt32 = arc4random_uniform(45)+1 //0~44까지의 값에서 1~45까지의 값을 랜덤하게 발생

//switch case문
switch lottoNum{//여기서도 c나 자바와 다르게 소괄호가 사라짐
case 0:
    print("0") //break 키워드도 필요없다.
case 1...20:
    print("1~20")
    fallthrough //break 없이 해당 case의 구문이 실행되면 종료되지만, 밑의 구문을 계속해서 실행하고 싶으면 fallthrough를 사용한다.
default://스위프트의 switch case에는 반드시 default문이 필요하다.
    print("21~45")
}

var myRandom : UInt32 = arc4random_uniform(10)+1
if myRandom<5{
    print("less than 5")
}
else if myRandom<8{
    print("bigger than 4 and less than 8")
}
else{
    print("number is 8 or 9 or 10")
}

switch myRandom{
case 1...4:
    print("number is 1~4")
case 5...7:
    print("number is 5~7")
default:
    print("number is 8~10")
}
