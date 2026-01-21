//
//  UserListViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 21/01/2026.
//

import Foundation
internal import Combine

@MainActor
class UserListViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        
    }
    
    func fetchUser(forConfig config: UserListConfig) async {
        do {
            self.users = try await UserService.fetchUsers(forConfig: config)
        } catch {
            print("DEBUG: Failed to fetch users with error: \(error)")
        }
    }
}
