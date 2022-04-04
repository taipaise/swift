import UIKit

for i in 2...9{
    for k in 1...9{
        print("\(i)*\(k)=\(i*k)")
    }
}

var num : Int = 1
while num <= 100{
    if (num % 3) == 0{
        print("3의 배수 발견 :\(num)")
    }
    num += 1
}
var num1 : Int
for i in 1...5{
    num1 = 1
    while num1 <= i{
    print("*", terminator:"")
    num1 += 1
    }
    print("")
}
 
