//
//  SetTest.swift
//  TestApp
//
//  Created by Do, Hung on 7/12/16.
//  Copyright © 2016 Do, Hung. All rights reserved.
//

import XCTest

@testable import TestApp

class SetTest: XCTestCase {
    
    var emptySet = CustomSet()
    var oneSet = CustomSet()
    var multSet = CustomSet()
    var dupliSet = CustomSet()
    
    override func setUp() {
        super.setUp()
        
        oneSet.add(1)
        
        multSet.add(1)
        multSet.add(2)
        
        dupliSet.add(1)
        dupliSet.add(1)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsEmpty() {
        XCTAssert(emptySet.empty())
        
        XCTAssert(!oneSet.empty())
    }
    
    func testSize() {
        XCTAssert(emptySet.length() == 0)
        XCTAssert(oneSet.length() == 1)
    }
    
    func testAdd() {
        XCTAssert(oneSet.get(0) == 1)
        XCTAssert(oneSet.get(1) == -1)
        
        XCTAssert(multSet.get(0) == 1)
        XCTAssert(multSet.get(1) == 2)
        
        XCTAssert(dupliSet.length() == 1)
    }
    
    func testRemove() {
        emptySet.remove(5)
        XCTAssert(emptySet.size == 0)
        
        oneSet.remove(1)
        XCTAssert(oneSet.size == 0)
        
        multSet.remove(1)
        XCTAssert(multSet.size == 1)
    }
}
