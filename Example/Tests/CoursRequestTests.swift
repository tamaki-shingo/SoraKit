//
//  CoursRequestTests.swift
//  SoraKit
//
//  Created by tamaki on 7/1/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
@testable import SoraKit

class CoursRequestTests: XCTestCase {
    let sora = Sora()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testCoursRequest() {
        let expectation = self.expectation(description: "Cours Request")
        sora.cours(success: { cours in
            print(cours)
            XCTAssertNotNil(cours)
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
