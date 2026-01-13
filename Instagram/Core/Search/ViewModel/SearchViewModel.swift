//
//  SearchViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 13/01/2026.
//

import Foundation
internal import Combine

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}

