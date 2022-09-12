//
//  CustomizableGenericButtonTests.swift
//  CustomizableGenericButtonTests
//
//  Created by Zeeshan Habib on 13/09/2022.
//

import XCTest
@testable import CustomizableGenericButton

class CustomizableGenericButtonTests: XCTestCase {

    var customizableGenericButton: CustomizableGenericButton!

    override func setUp() {
        customizableGenericButton = CustomizableGenericButton()
    }

    func testAdd() {
            XCTAssertEqual(customizableGenericButton.add(a: 1, b: 1), 2)
    }

}
