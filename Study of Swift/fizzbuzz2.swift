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
    let arrayX = Array(strX)
    
    let fizz:() -> String = {
        let strCount = count(strX)
        var sum = 0
        var a = x;
        
        for i in 1..<strCount {
            let m = a % 10
            sum += m
            
            a = (a - m) / 10
        }
        
        sum += a
        
        let array = (0...3 * strCount).map{$0*3}
        if contains(array, sum) {
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
    let arrayX = Array(stringX)
    let fizz =  contains((0...(arrayX.count * 3)).map{$0 * 3}, arrayX.map({String($0).toInt()!}).reduce(0, combine: +)) ? "fizz" : ""
    let buzz = contains(["0", "5"], arrayX.last!) ? "buzz" : ""
    
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
    for i in strX.startIndex..<strX.endIndex {
        //    for i in indices(strX) {
        sum += String(strX[i]).toInt()!
    }
    
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
    switch strX[advance(strX.endIndex, -1)] {
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
    let sum = map(String(x), {String($0).toInt()!}).reduce(0, combine:+)
    return contains([0, 3, 6, 9], sum) ? "fizz" : x < 10 ? "" : fizzd(sum)
}

func buzzd(x:Int) -> String{
    return contains(["0", "5"], last(String(x))!) ? "buzz" : ""
}
