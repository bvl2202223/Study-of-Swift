//
//  fizzbuzz.swift
//  Study of Swift
//
//  Created by uamuma on 2015/09/02.
//  Copyright (c) 2015年 bvl. All rights reserved.
//

import Foundation

func fizzbuzz(_ x:Int) -> String{
    
    var str = ""
    
    if x % 3 == 0 {
        str += "fizz"
    }
    
    if x % 5 == 0 {
        str += "buzz"
    }
    
    if str != "" {
        return str
    }else{
        return String(x)
    }
}
