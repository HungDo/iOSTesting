//
//  Set.swift
//  TestApp
//
//  Created by Do, Hung on 7/12/16.
//  Copyright © 2016 Do, Hung. All rights reserved.
//

import Foundation

struct CustomSet {
    
    var isEmpty = true;
    
    init() { }
    
    mutating func add(number: Int) {
        isEmpty = false;
    }
    
    func empty() -> Bool {
        return isEmpty
    }
}
