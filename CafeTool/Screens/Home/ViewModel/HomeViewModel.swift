//
//  HomeViewModel.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 27/04/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var coffees: [CoffeeDataModel] = []
    
    func fetchCoffees() async {
        await withCheckedContinuation { continuation in
            DispatchQueue.global().asyncAfter(deadline: .now() + 2) { [weak self] in
                self?.coffees = [
                    CoffeeDataModel(name: "Manifesto", grams: 250, gramsLeft: 50),
                    CoffeeDataModel(name: "Municipal", grams: 500, gramsLeft: 200)
                ]
                continuation.resume()
            }
        }
    }
    
}
