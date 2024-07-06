//
//  DatabaseManager.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 08/05/24.
//

import Foundation

class DatabaseManager: DatabaseManagerProtocol {
    func saveUser(name: String) async throws {
        try await withCheckedThrowingContinuation { continuation in
            DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
                continuation.resume()
            }
        } as Void
    }
}
