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

let fizzbuzzArray = range.map(fizzbuzz)

println(range)
println(fizzbuzzArray)

let fizzbuzzArraya = range.map(fizzbuzz2a)
println("fizzbuzzArray == fizzbuzzArraya \(fizzbuzzArray == fizzbuzzArraya)")

let fizzbuzzArrayb = range.map(fizzbuzz2b)
println("fizzbuzzArray == fizzbuzzArrayb \(fizzbuzzArray == fizzbuzzArrayb)")

let fizzbuzzArrayc = range.map(fizzbuzz2c)
println("fizzbuzzArray == fizzbuzzArrayc \(fizzbuzzArray == fizzbuzzArrayc)")

let fizzbuzzArrayd = range.map(fizzbuzz2d)
println("fizzbuzzArray == fizzbuzzArrayd \(fizzbuzzArray == fizzbuzzArrayd)")
