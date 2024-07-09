//
//  DatabaseManager.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 08/05/24.
//

import Foundation

final class DatabaseManager: DatabaseManagerProtocol {
    func saveUser(name: String) async -> Result<String, DatabaseManagerError> {
        if name.isEmpty {
            return .failure(DatabaseManagerError.internalServerError)
        }
        
        return .success(name)
    }
}
