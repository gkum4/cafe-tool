//
//  DatabaseManagerProtocol.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 08/05/24.
//

import Foundation

protocol DatabaseManagerProtocol {
    func saveUser(name: String) async throws(DatabaseManagerError) -> String
}
