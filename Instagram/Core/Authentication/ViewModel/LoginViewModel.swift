//
//  LoginViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 13/01/2026.
//

import Foundation
internal import Combine

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)

    }
}
