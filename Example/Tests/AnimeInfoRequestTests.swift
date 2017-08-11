//
//  YearRequestTests.swift
//  SoraKit
//
//  Created by tamaki on 7/2/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
@testable import SoraKit

class AnimeInfoRequestTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let expectation = self.expectation(description: "Cours Request")
        Sora.animeInfo(OfYear: 2015, season: .winter, success: { yearDetails in
            print(yearDetails)
            XCTAssertNotNil(yearDetails)
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
