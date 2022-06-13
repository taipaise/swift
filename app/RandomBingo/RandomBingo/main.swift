//
//  main.swift
//  RandomBingo
//
//  Created by taipaise on 2022/04/05.
//

import Foundation

var computerChoice : Int = Int.random(in: 1...100)
var myChoice : Int = 0
var userInput : String?
while true{
    userInput = readLine()
    if let input = userInput{
        if let number = Int(input){
            myChoice = number
        }
    }

    if computerChoice > myChoice{
        print("up")
    }
    else if computerChoice < myChoice{
        print("down")
    }
    else{
        print("bingo")
        break
    }
}
