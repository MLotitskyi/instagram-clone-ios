//
//  PostGridViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 16/01/2026.
//

import Foundation
internal import Combine

class PostGridViewModel: ObservableObject {
    private var user: User
    @Published var posts = [Post]()
    
    init(user: User) {
        self.user = user
        
        Task { try await fetchUserPosts() }
    }
    
    @MainActor
    func fetchUserPosts() async throws {
        self.posts = try await PostService.fetchUserPosts(uid: user.id)
        
        for i in 0 ..< posts.count {
            posts[i].user = self.user
        }
    }
}
