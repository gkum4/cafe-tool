//
//  AppError.swift
//  CafeTool
//
//  Created by Gustavo Kumasawa on 09/07/24.
//

import Foundation

enum AppError: LocalizedError {
    
    case notFound
    case serverError
    case unknwon
    
    var errorDescription: String? {
        switch self {
        case .notFound:
            return "Not found"
        case .serverError:
            return "Server error"
        case .unknwon:
            return "Unknown error"
        }
    }
    
}
