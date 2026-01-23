//
//  ProfileViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 19/01/2026.
//

import Foundation
internal import Combine

@MainActor
class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
    
    func fetchUserStats() {
        guard user.stats == nil else { return }
        Task {
            self.user.stats = try await UserService.fetchUserStats(uid: user.id)
        }
    }
}

// MARK: - Following

extension ProfileViewModel {
    func follow() {
        Task {
            do {
                user.isFollowed = true
                try await UserService.follow(uid: user.id)
                
                NotificationManager.shared.uploadFollowNotification(toUid: user.id)
            } catch {
                print(error)
                user.isFollowed = false
            }
        }
    }
    
    func unfollow() {
        Task {
            do {
                user.isFollowed = false
                try await UserService.unfollow(uid: user.id)
                
                await NotificationManager.shared.deleteFollowNotification(notificationOwnerUid: user.id)
            } catch {
                print(error)
                user.isFollowed = true
            }
        }
    }
    
    func checkIfUserIsFollowed() {
        guard user.isFollowed == nil else { return }
        Task {
            self.user.isFollowed = try await UserService.checkIfUserIsFollowed(uid: user.id)
        }
    }
}
