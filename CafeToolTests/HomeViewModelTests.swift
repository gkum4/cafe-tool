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
    
    override func setUp() async throws {
        try await super.setUp()
        
        sut = await HomeViewModel()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    @MainActor
    func testFetchCoffees_shouldPopulateCoffees() async {
        // Given
        sut.coffees = []
        
        // When
        await sut.fetchCoffees()
        
        // Then
        XCTAssertFalse(sut.coffees.isEmpty, "Deveria popular o array de coffees")
    }
    
    @MainActor
    func testSoma1() {
        let valueA = 5
        let valueB = 5
        let expectedResult = 10
        
        XCTAssertTrue(sut.soma(a: valueA, b: valueB) == expectedResult)
    }
    
    @MainActor
    func testSoma2() {
        let valueA = 10
        let valueB = 45
        let expectedResult = 55
        
        XCTAssertTrue(sut.soma(a: valueA, b: valueB) == expectedResult)
    }
}

