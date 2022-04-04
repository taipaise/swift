import UIKit

var name : String? = "john"
if let op = name{ //if let 바인딩
    print(op)
}

func doSome(name : String?){
    guard let n = name else {return} //guard let 바인딩
    print(n)
}
doSome(name: "asdad")

var str : String?
var str2 = str ?? "gil" //닐 코얼레싱. 기본 값을 제시하여 옵셔널 가능성 없앰
print(str2)

var number : Int? = 7

if let num = number{
    print(num)
}

var hello :String? = "hi"
if let str3 = hello{
    print(str3)
}
