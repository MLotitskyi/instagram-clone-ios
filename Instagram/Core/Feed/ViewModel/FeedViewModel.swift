//
//  FeedViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/01/2026.
//

import Foundation
import FirebaseFirestore
internal import Combine

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
}
