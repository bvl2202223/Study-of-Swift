//
//  flatUnwrap.swift
//  Study of Swift
//
//  Created by uamuma on 2016/01/05.
//  Copyright © 2016年 bvl. All rights reserved.
//

import Foundation

func flatWrap(any:Any) -> Any? {
    let mirror:Mirror = Mirror(reflecting:any)
    let children = mirror.children
    
    let index = children.startIndex
    
    if index != children.endIndex &&
        mirror.description.hasPrefix("Mirror for Optional<") {
            let value = children[index].value
            
            return flatWrap(value)
    }
    
    return any
}