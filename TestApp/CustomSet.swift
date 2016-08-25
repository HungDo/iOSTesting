//
//  Set.swift
//  TestApp
//
//  Created by Do, Hung on 7/12/16.
//  Copyright © 2016 Do, Hung. All rights reserved.
//

import Foundation

struct CustomSet {
    
    var size : Int = 0
    var isEmpty = true;
    var elements : [Int]?
    
    init() {
        elements = []
    }
    
    mutating func add(number: Int) {
        if indexOf(number) != -1 {
            return
        }
        
        elements?.append(number)
        
        isEmpty = false;
        size += 1
    }
    
    mutating func remove(number: Int) {
        let index : Int = indexOf(number)

        if index == -1 {
            return
        }

        elements![index] = elements![elements!.count - 1]
        size -= 1
    }
    
    func get(index: Int) -> Int {
        if (index > size - 1) {
            return -1
        }
        
        return elements![index]
    }
    
    func empty() -> Bool {
        return isEmpty
    }
    
    func length() -> Int {
        return size;
    }
    
    private func indexOf(index: Int) -> Int {
        for i in 0..<elements!.count {
            if elements![i] == index {
                return i
            }
        }
        
        return -1
    }
}
