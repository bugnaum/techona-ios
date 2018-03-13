//
//  TechonaTests.swift
//  TechonaTests
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import XCTest
@testable import Techona

class TechonaTests: XCTestCase {
    
    var viewModel = HomeViewModel(delegate: HomeTableViewController())
    
    override func setUp() {
        super.setUp()
        viewModel.load()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testShouwValidateNumberOfRows() {
        XCTAssertEqual(viewModel.numberOfRows(), 3)
    }
    
    func testShouldValidateNumberOfSections() {
        XCTAssertEqual(viewModel.numberOfSections(), 1)
    }
    
    func testShouldValidateDTO() {
        let dto = viewModel.dtoForRow(index: 0)
        XCTAssertEqual("Button", dto.buttonTitle)
        XCTAssertEqual("Apple", dto.companyName)
    }
    
    func testShouldValidateWrongDTO() {
        let dto = viewModel.dtoForRow(index: 99)
        XCTAssertEqual("", dto.buttonTitle)
        XCTAssertEqual("", dto.companyName)
    }
    
    func testShouldValidateType() {
        let type = viewModel.typeForRow(index: 0)
        XCTAssertEqual(type, ButtonType.center)
    }
    
    func testShouldValidateWrongType() {
        let type = viewModel.typeForRow(index: 99)
        XCTAssertEqual(type, ButtonType.center)
    }
}
