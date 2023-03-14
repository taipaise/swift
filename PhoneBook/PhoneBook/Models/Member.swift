//
//  Member.swift
//  PhoneBook
//
//  Created by 이동현 on 2023/03/14.
//

import UIKit

struct MemberInfo{
    
    // 멤버의 순서를 위한 타입 저장 속성
    static var memberNumbers : Int = 0
    
    lazy var profileImg: UIImage? = {
        guard let name = name else{
            return UIImage(systemName: "person")
        }
        return UIImage(named: "\(name)") ?? UIImage(systemName: "person")
    }()
    
    let  id : Int
    var  name : String?
    var  age : Int?
    var  phone : String?
    var  address : String?
    
    init(name: String?, age: Int?, phone: String?, address: String?) {
        self.id = MemberInfo.memberNumbers
        self.name = name
        self.age = age
        self.phone = phone
        self.address = address
        
        MemberInfo.memberNumbers += 1
    }
}
