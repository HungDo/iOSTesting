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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsEmpty() {
        var set = CustomSet()
        set.add(number: 5)
        XCTAssert(!set.empty())
        
        set = CustomSet()
        XCTAssert(set.empty())
    }
    
    
}
