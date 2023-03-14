//
//  MemberListManager.swift
//  PhoneBook
//
//  Created by 이동현 on 2023/03/14.
//

import Foundation

final class MemberListManager {
    private var memberList: [MemberInfo] = []
    
    func makeMemberListData() {
        memberList = [
            MemberInfo(name: "홍길동", age: 20, phone: "010-1234-2213", address: "서울"),
            MemberInfo(name: "김철수", age: 21, phone: "010-1534-2563", address: "수원"),
            MemberInfo(name: "임꺽정", age: 22, phone: "010-2454-2233", address: "인천"),
            MemberInfo(name: "이영희", age: 23, phone: "010-3215-6415", address: "분당"),
            MemberInfo(name: "이민지", age: 24, phone: "010-1234-2456", address: "대전"),
            MemberInfo(name: "최유리", age: 25, phone: "010-1231-7582", address: "대구")
        ]
    }
    
    func getMemberList() -> [MemberInfo] {
        return memberList
    }
    
    func addNewMember(member : MemberInfo) {
        memberList.append(member)
    }
    
    func updateMember(index: Int , member: MemberInfo){
        memberList[index] = member
    }
    //setter 설정 안해주면 반환하는 값는 불변값이기 때문에 배열 요소를 수정할 수 없음
    subscript(index : Int) -> MemberInfo {
        get {
            return memberList[index]
        }
        set {
            memberList[index] = newValue
        }
    }
}
