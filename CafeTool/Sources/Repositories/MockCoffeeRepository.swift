//
//  MockCoffeeRepository.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 09/07/24.
//

import Foundation

#if DEBUG
class MockCoffeeRepository: CoffeeRepositoryProtocol {
    
    var fetchCoffeesResult: Result<[CoffeeDataModel], AppError>?
    var fetchCoffeesInvoked = false
    func fetchCoffees() async -> Result<[CoffeeDataModel], AppError> {
        fetchCoffeesInvoked = true
        return fetchCoffeesResult ?? .failure(.unknwon)
    }
    
    var createCoffeeResult: Result<CoffeeDataModel, AppError>?
    var createCoffeeInvoked = false
    func createCoffee(_ coffee: CreateCoffeeDataModel) async -> Result<CoffeeDataModel, AppError> {
        createCoffeeInvoked = true
        return createCoffeeResult ?? .failure(.unknwon)
    }
    
    var deleteCofeeResult: Result<Void, AppError>?
    var deleteCofeeInvoked = false
    func deleteCofee(with id: String) -> Result<Void, AppError> {
        deleteCofeeInvoked = true
        return deleteCofeeResult ?? .failure(.unknwon)
    }
    
    var updateCofeeResult: Result<CoffeeDataModel, AppError>?
    var updateCofeeInvoked = false
    func updateCofee(_ coffee: CoffeeDataModel) async -> Result<CoffeeDataModel, AppError> {
        updateCofeeInvoked = true
        return updateCofeeResult ?? .failure(.unknwon)
    }
    
}

extension MockCoffeeRepository {
    
    static func createSuccess() -> MockCoffeeRepository {
        let repository = MockCoffeeRepository()
        
        repository.fetchCoffeesResult = .success([
            CoffeeDataModel(
                id: UUID().uuidString,
                name: "Pitoresco",
                grams: 250,
                gramsLeft: 250
            ),
            CoffeeDataModel(
                id: UUID().uuidString,
                name: "Mercado",
                grams: 500,
                gramsLeft: 110
            ),
        ])
        
        repository.createCoffeeResult = .success(CoffeeDataModel(
            id: UUID().uuidString,
            name: "Pitoresco",
            grams: 250,
            gramsLeft: 250
        ))
        
        repository.deleteCofeeResult = .success(())
        
        repository.updateCofeeResult = .success(CoffeeDataModel(
            id: UUID().uuidString,
            name: "Pitoresco",
            grams: 250,
            gramsLeft: 250
        ))
        
        return repository
    }
    
}
#endif
