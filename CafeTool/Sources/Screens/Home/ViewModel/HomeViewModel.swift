//
//  HomeViewModel.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 27/04/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published private(set) var coffees: [CoffeeDataModel] = []
    @Published private(set) var error: AppError?
    
    private let coffeeRepository: CoffeeRepositoryProtocol
    
    init(coffeeRepository: CoffeeRepositoryProtocol = RemoteCoffeeRepository()) {
        self.coffeeRepository = coffeeRepository
    }
    
    @MainActor
    func fetchCoffees() async {
        switch (await coffeeRepository.fetchCoffees()) {
        case .success(let coffees):
            self.coffees = coffees
        case .failure(let error):
            self.error = error
        }
    }
    
    @MainActor
    func dismissError() {
        error = nil
    }
    
}
