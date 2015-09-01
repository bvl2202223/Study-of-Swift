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
    init (string:String){
        self.string = string;
    }

    func overloadTest(a:A) -> String{
        return "A"
    }
}
