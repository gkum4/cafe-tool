//
//  CoffeeDataModel.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 27/04/24.
//

import Foundation

struct CoffeeDataModel: Identifiable {
    let id = UUID()
    var name: String
    var grams: Float
    var gramsLeft: Float
}
