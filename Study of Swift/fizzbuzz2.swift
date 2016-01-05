//
//  fizzbuzz2.swift
//  Study of Swift
//
//  Created by uamuma on 2015/09/03.
//  Copyright (c) 2015年 bvl. All rights reserved.
//

import Foundation

func fizzbuzz2a(x:Int) -> String{
    let strX = String(x)
    
    let fizz:() -> String = {
        let strCount = strX.characters.count
        var sum = 0
        var a = x;
        
        (1..<strCount).forEach { _ in
            let m = a % 10
            sum += m
            
            a = (a - m) / 10
        }
        
        sum += a
        
        let array = (0...3 * strCount).map{$0*3}
        if array.contains(sum) {
            return "fizz"
        }else{
            return ""
        }
    }
    
    let buzz:() -> String = {
        if x % 5 == 0 {
            return "buzz"
        }else{
            return ""
        }
    }
    
    var str = fizz() + buzz()
    
    if str == "" {
        str = strX
    }
    
    return str
}

func fizzbuzz2b(x:Int) -> String{
    let stringX = String(x)
    let characters = stringX.characters
    let sum = characters.flatMap{Int(String($0))}.reduce(0, combine: +)
    let fizz =  (0...(characters.count * 3)).map{$0 * 3}.contains(sum) ? "fizz" : ""
    let buzz = ["0", "5"].contains(characters.last!) ? "buzz" : ""
    
    var str = fizz + buzz
    
    if str == "" {
        str = stringX
    }
    
    return str
}

func fizzbuzz2c(x:Int) -> String{
    var str = fizzc(x) + buzzc(x)
    
    if str == "" {
        str = String(x)
    }
    
    return str
}

func fizzc(x:Int) -> String{
    let strX = String(x)
    var sum = 0
    
//    for i in strX.startIndex..<advance(strX.startIndex, distance(strX.startIndex, strX.endIndex)) {
//    for i in indices(strX) {
    for i in strX.startIndex..<strX.endIndex {
//        guard let value = Int(String(strX[i])) else{
//            continue
//        }
//        
//        sum += value
        
        sum += Int(String(strX[i]))!
    }
    
//    (strX.startIndex..<strX.endIndex).forEach{ i in
//        guard let value = Int(String(strX[i])) else {
//            return
//        }
//        
//        sum += value
//    }
    
//    for character in String(x) {
//        sum += String(character).toInt()!
//    }
    
    switch sum{
    case 0, 3, 6, 9 :
        return "fizz"
    case  1...11 :
        return ""
    default :
        return fizzc(sum)
    }
}

func buzzc(x:Int) -> String {
    let strX = String(x)
    switch strX[strX.endIndex.advancedBy(-1)] {
//    switch last(String(x))!{
    case "0", "5" :
        return "buzz"
    default :
        return ""
    }
}

func fizzbuzz2d(x:Int) -> String{
    switch fizzd(x) + buzzd(x){
    case "" :
        return String(x)
    case let str :
        return str
    }
}

func fizzd(x:Int) -> String {
    let sum = String(x).characters.flatMap{Int(String($0))}.reduce(0, combine:+)
    return [0, 3, 6, 9].contains(sum) ? "fizz" : x <= 11 ? "" : fizzd(sum)
}

func buzzd(x:Int) -> String{
    return ["0", "5"].contains(String(x).characters.last!) ? "buzz" : ""
}
