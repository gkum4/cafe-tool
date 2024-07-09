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
    var coffeeRepository: MockCoffeeRepository!
    
    override func setUp() {
        super.setUp()
        
        coffeeRepository = MockCoffeeRepository()
        sut = HomeViewModel(coffeeRepository: coffeeRepository)
    }
    
    override func tearDown() {
        super.tearDown()
        
        coffeeRepository = nil
        sut = nil
    }
    
    @MainActor
    func testFetchCoffees_shouldPopulateCoffees() async {
        // Given
        coffeeRepository.fetchCoffeesResult = .success([
            CoffeeDataModel(id: UUID().uuidString, name: "Coffee1", grams: 1, gramsLeft: 1),
            CoffeeDataModel(id: UUID().uuidString, name: "Coffee2", grams: 1, gramsLeft: 1),
            CoffeeDataModel(id: UUID().uuidString, name: "Coffee3", grams: 1, gramsLeft: 1),
        ])
        
        // When
        await sut.fetchCoffees()
        
        // Then
        XCTAssertFalse(sut.coffees.isEmpty, "Deve popular o array de coffees")
    }
    
    @MainActor
    func testFetchCoffees_shouldPopulateErrorVariable_onError() async {
        // Given
        coffeeRepository.fetchCoffeesResult = .failure(.serverError)
        
        // When
        await sut.fetchCoffees()
        
        // Then
        XCTAssertNotNil(sut.error, "Deve popular variável de erro")
    }
    
}

