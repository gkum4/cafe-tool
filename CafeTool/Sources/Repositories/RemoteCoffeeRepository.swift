//
//  CoffeeRepository.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 09/07/24.
//

class RemoteCoffeeRepository: CoffeeRepositoryProtocol {
    
    func fetchCoffees() async -> Result<[CoffeeDataModel], AppError> {
        return .failure(.unknwon)
    }
    
    func createCoffee(_ coffee: CreateCoffeeDataModel) async -> Result<CoffeeDataModel, AppError> {
        return .failure(.unknwon)
    }
    
    func deleteCofee(with id: String) -> Result<Void, AppError> {
        return .failure(.unknwon)
    }
    
    func updateCofee(_ coffee: CoffeeDataModel) async -> Result<CoffeeDataModel, AppError> {
        return .failure(.unknwon)
    }
    
}
