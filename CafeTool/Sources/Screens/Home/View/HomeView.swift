//
//  HomeView.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 27/04/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.coffees) { coffee in
                Text("\(coffee.name) - (quantidade: \(coffee.gramsLeft)g/\(coffee.grams)g")
            }
        }
        .onAppear {
            Task {
                await viewModel.fetchCoffees()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
    
}
