//
//  RegistrationViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 12/01/2026.
//

import Foundation
internal import Combine

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        username = ""
        email = ""
        password = ""
    }
}
