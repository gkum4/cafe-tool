//
//  CoffeeRepositoryProtocol.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 09/07/24.
//

protocol CoffeeRepositoryProtocol {
    
    func fetchCoffees() async -> Result<[CoffeeDataModel], AppError>
    func createCoffee(_ coffee: CreateCoffeeDataModel) async -> Result<CoffeeDataModel, AppError>
    func deleteCofee(with id: String) -> Result<Void, AppError>
    func updateCofee(_ coffee: CoffeeDataModel) async -> Result<CoffeeDataModel, AppError>
    
}
