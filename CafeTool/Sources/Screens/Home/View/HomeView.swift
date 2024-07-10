//
//  HomeView.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 27/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    init(viewModel: HomeViewModel = HomeViewModel()) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        List {
            ForEach(viewModel.coffees) { coffee in
                Text("\(coffee.name) - (qnt: \(coffee.gramsLeft)g/\(coffee.grams)g")
            }
        }
        .task {
            await viewModel.fetchCoffees()
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        let mockCoffeeRepository = MockCoffeeRepository.createSuccess()
        let viewModel = HomeViewModel(coffeeRepository: mockCoffeeRepository)
        
        return HomeView(viewModel: viewModel)
    }
    
}
