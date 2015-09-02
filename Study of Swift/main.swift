//
//  main.swift
//  Study of Swift
//
//  Created by takahiro baba on 2015/09/01.
//  Copyright (c) 2015年 bvl. All rights reserved.
//

import Foundation

println("Hello, Swift!")
println("test")
println("もう一回")

let a = A(string: "A")

println(a.string)

let range = Array(0...21)

let array1 = range.map(fizzbuzz)

println(array1)
