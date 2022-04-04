import UIKit

//함수 (Function)
//함수의 용도
//1. 코드를 기능별로 분리 (코드를 간결하게 함)
//2. 코드블럭에 이름을 붙일 수 있음, 관리하기 쉬움
//3. 코드 재사용 가능. 즉, 코드의 중복을 피할 수 있다.

/*
func 함수이름 (매개변수 이름 : 타입) -> 반환형 타입{
 수행문
 }
 */
func myFunc(){
    print("함수 실행됨")
}
myFunc()

//함수의 4가지 패턴
//1. 매개변수가 없고 반환형이 없음
//2. 매개변수가 있고 반환형이 없음
//3. 매개변수가 없고 반환형이 있음
//4. 매개변수가 있고 반환형이 있음

//매개 변수가 없고 반환형이 없는 경우
func myFunc1() -> Void{//void는 생략 가능
    print("myFunc1 실행")
}
myFunc1()

//매개 변수가 있고 반환형이 없는 경우
func myFunc2(name : String){//void는 생략 가능
    print(name," myFunc2 실행")
}
myFunc2(name: "hong") //매개변수가 있는 경우, 매개변수 이름과 값을 동시에 넣어주어야 한다.

//매개 변수가 없고 반환형이 있는 경우
func myFunc3() -> Int {//void는 생략 가능
    print("myFunc3 실행")
    return 10
}
let result : Int = myFunc3()

//매개 변수가 있고 반환형이 있는 경우
func myFunc4(number : Int) -> Int{
    print("func4 실행")
    return number*2
}
let result2 : Int = myFunc4(number: 10)

//매개변수가 여러개일 때
func printMyName(name1 : String, name2: String) ->String{
    return name1 + name2
}

print(printMyName(name1:"L", name2:"DH"))

//매개변수에 기본값을 넣어줄 수 있음
func printMyName2(name1: String = "홍", name2: String) -> String{
    return name1 + name2
}
print(printMyName2(name1:"L", name2:"DH")) //name1의 기본 값이 "홍"으로 들어가 있지만, 매개변수로 name1에 "L"을 받았으므로 "홍" 대신 "L"이 들어간다.

//호출 시 매개 변수의 이름을 함께 입력해야 하지만, 생략가능할 수 있음
func printMyName3(_ name1 : String , _ name2 : String){ //매개 변수 앞에 _를 붙여준다. 단 _뒤에 띄어쓰기를 해야함 예를들어 _name1일 경우 매개 변수 이름 생략 가능이 아닌 매개 변수 자체가 _name1이 된다.
    print("name1 : \(name1), name2 : \(name2)")
}
printMyName3("이","동현")


//매개 변수의 이름에 label을 붙일 수 있다.
func printMyName4(hero name1 : String, actor name2 : String){
    print("hero name:\(name1), actor:\(name2)")
}
printMyName4(hero: "iron man", actor: "Robert Jr.")

//가변 매개변수 : 매개 변수를 배열로 입력할 수 있다.
func printMyName5(name1 : String, name2: String...){ //name2를 배열로 받음
    print("name1: \(name1), name2 : \(name2)")
    for name in name2{
        print(name)
    }
}
printMyName5(name1: "홍길동", name2: "춘향이, 변사또, 이몽룡")
