//
//  DataManager.swift
//  TableView
//
//  Created by 이동현 on 2023/03/12.
//

import UIKit

class DataManager {
    var langArray : [Lang] = []
    
    func makeLangData() {
        langArray = [
            Lang(langImg: UIImage(named: "swiftLogo"), langName: "Swift", langDescription: "ios 개발 언어"),
            Lang(langImg: UIImage(named: "cLogo"), langName: "C", langDescription: "근본 프로그래밍 언어"),
            Lang(langImg: UIImage(named: "cppLogo"), langName: "C++", langDescription: "알고리즘 특화 객체 지향 언어"),
            Lang(langImg: UIImage(named: "javaLogo"), langName: "Java", langDescription: "JVM으로 돌아가는 객체 지향 언어"),
            Lang(langImg: UIImage(named: "pythonLogo"), langName: "Python", langDescription: "입문이 쉬운 언어"),
            Lang(langImg: UIImage(named: "rLogo"), langName: "R", langDescription: "통계용 언어"),
            Lang(langImg: UIImage(named: "htmlLogo"), langName: "html", langDescription: "프로그래밍 언어는 아니지만 마크업 언어")
            ]
    }
    
    func getLangData() -> [Lang] {
        return langArray
    }
    
    func updateLangData() {
        let dummy =  Lang(langImg: UIImage(named: "htmlLogo"), langName: "html", langDescription: "프로그래밍 언어는 아니지만 마크업 언어")
        print("추가전 배열 길이")
        print(langArray.count)
        langArray.append(dummy)
        print("추가후 배열 길이")
        print(langArray.count)
    }
}
