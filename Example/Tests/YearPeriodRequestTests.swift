//
//  YearRequestTests.swift
//  SoraKit
//
//  Created by tamaki on 7/2/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
@testable import SoraKit

class YearRequestTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let expectation = self.expectation(description: "Cours Request")
        Sora.year(2015, success: { years in
            print(years)
            XCTAssertNotNil(years)
            expectation.fulfill()
        }) { error in
            XCTFail(error.localizedDescription)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 1) { error in
            if let error = error {
                XCTFail((error.localizedDescription))
            }
        }
    }
}
