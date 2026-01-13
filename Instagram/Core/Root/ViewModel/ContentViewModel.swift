//
//  ContentViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 12/01/2026.
//

import Foundation
import FirebaseAuth
internal import Combine

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)

    }
}
