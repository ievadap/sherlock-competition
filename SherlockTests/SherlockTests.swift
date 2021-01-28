//
//  SherlockTests.swift
//  SherlockTests
//
//  Created by Ieva on 2021-01-28.
//

import XCTest

class SherlockTests: XCTestCase {
    var validator: Validator!
    
    override func setUp() {
        super.setUp()
        validator = Validator()
    }
    
    override func tearDown() {
        validator = nil
        super.tearDown()
    }
    
    func test_givenEvenFrequencies_valid() throws {
        XCTAssertTrue(validator.isValid("abc"))
    }
    
    func test_givenUnevenFrequencies_becauseSingleExtraSymbol_valid() throws {
        XCTAssertTrue(validator.isValid("abcc"))
        XCTAssertTrue(validator.isValid("abcdefghhgfedecba"))
    }
    
    func test_givenUnevenFrequencies_becauseMultipleExtraSymbols_invalid() throws {
        XCTAssertFalse(validator.isValid("abccc"))
        XCTAssertFalse(validator.isValid("aabbcd"))
        XCTAssertFalse(validator.isValid("aabbccddeefghi"))
    }
}
