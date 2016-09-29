//
//  A.swift
//  Study of Swift
//
//  Created by takahiro baba on 2015/09/01.
//  Copyright (c) 2015年 bvl. All rights reserved.
//

import Foundation

class A{
    var string:String
    fileprivate var privateString:String
    init (string:String){
        self.string = string;
        self.privateString = string
    }

    func overloadTest(_ a:A) -> String{
        return "A"
    }
}
