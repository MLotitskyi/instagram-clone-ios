//
//  AuthService.swift
//  Instagram
//
//  Created by Максим Лотіцький on 12/01/2026.
//

import Foundation
import FirebaseAuth
internal import Combine

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("DEBUG: Failed to register user with error \(error.localizedDescription)")
        }
    }
    
    func loadUserLoad() async throws {
        
    }
    
    func signOut() {
        
    }
}
