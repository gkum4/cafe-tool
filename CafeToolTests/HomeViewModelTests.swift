//
//  HomeViewModelTests.swift
//  CafeToolTests
//
//  Created by Gustavo Kumasawa on 27/04/24.
//

import XCTest
@testable import CafeTool

class HomeViewModelTests: XCTestCase {
    var sut: HomeViewModel!
    
    override func setUp() {
        super.setUp()
        sut = HomeViewModel()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func testFetchCoffees_shouldPopulateCoffees() async {
        // Given
        sut.coffees = []
        
        // When
        await sut.fetchCoffees()
        
        // Then
        XCTAssertFalse(sut.coffees.isEmpty)
    }
}
