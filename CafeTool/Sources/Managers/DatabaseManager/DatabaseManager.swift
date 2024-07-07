//
//  DatabaseManager.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 08/05/24.
//

import Foundation

final class DatabaseManager: DatabaseManagerProtocol {
    func saveUser(name: String) async throws(DatabaseManagerError) -> String {
        do {
            let userName: String = try await withCheckedThrowingContinuation { continuation in
                if name.isEmpty {
                    continuation.resume(throwing: DatabaseManagerError.internalServerError)
                }
                
                continuation.resume(returning: name)
            }
            
            return userName
        } catch {
            throw handleError(error)
        }
    }
    
    private func handleError(_ error: any Error) -> DatabaseManagerError {
        if let error = error as? DatabaseManagerError {
            return error
        } else {
            return .unknown
        }
    }
}
