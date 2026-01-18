//
//  CommentsViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 17/01/2026.
//

import Foundation
internal import Combine
import Firebase
import FirebaseAuth

@MainActor
class CommentsViewModel: ObservableObject {
    @Published var comments = [Comment]()
    
    private let post: Post
    private let service: CommentService
    
    init(post: Post) {
        self.post = post
        self.service = CommentService(postId: post.id)
        
        Task { try await fetchComments() }
    }
    
    func uploadComment(commentText: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let comment = Comment(postOwnerUid: post.ownerUid, commentText: commentText, postId: post.id, timestamp: Timestamp(), commentOwnerUid: uid)
        
        self.comments.insert(comment, at: 0)
        self.comments[0].user = UserService.shared.currentUser
        
        do {
            try await service.uploadComment(comment)
        } catch {
            self.comments.removeAll { $0.id == comment.id }
        }
    }
    
    func fetchComments() async throws {
        self.comments = try await service.fetchComments()
        try await fetchUserDataForComments()
    }
    
    private func fetchUserDataForComments() async throws {
        for i in 0 ..< comments.count {
            let comment = comments[i]
            let user = try await UserService.fetchUser(withUid: comment.commentOwnerUid)
            comments[i].user = user
        }
    }
}
