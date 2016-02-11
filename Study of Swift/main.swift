//
//  main.swift
//  Study of Swift
//
//  Created by takahiro baba on 2015/09/01.
//  Copyright (c) 2015年 bvl. All rights reserved.
//

import Foundation

print("Hello, Swift!")
print("test")
print("もう一回")

let a = A(string: "A")

print(a.string)

let range = Array(0...21)

let fizzbuzzArray = range.map(fizzbuzz)

print(range)
print(fizzbuzzArray)

let fizzbuzzArraya = range.map(fizzbuzz2a)
print("fizzbuzzArray == fizzbuzzArraya \(fizzbuzzArray == fizzbuzzArraya)")

let fizzbuzzArrayb = range.map(fizzbuzz2b)
print("fizzbuzzArray == fizzbuzzArrayb \(fizzbuzzArray == fizzbuzzArrayb)")

let fizzbuzzArrayc = range.map(fizzbuzz2c)
print("fizzbuzzArray == fizzbuzzArrayc \(fizzbuzzArray == fizzbuzzArrayc)")

let fizzbuzzArrayd = range.map(fizzbuzz2d)
print("fizzbuzzArray == fizzbuzzArrayd \(fizzbuzzArray == fizzbuzzArrayd)")

//mark Flat unwrap

let optionalString:String? = "Optional string"
let any:Any = optionalString
let n:String? = nil

//let string = any as! Optional<String>
//
//if let string = any {
//    print("\(string)")
//}

if let string = flatWrap(any) as? String {
    print("\(string)")
}

if let string = flatWrap(n) as? String{
    print("\(string)")
}
