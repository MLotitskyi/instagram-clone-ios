//
//  CommentService.swift
//  Instagram
//
//  Created by Максим Лотіцький on 17/01/2026.
//

import Firebase
import FirebaseFirestore

struct CommentService {
    
    static func uploadComment(_ comment: Comment, postId: String) async throws {
        guard let commentData = try? Firestore.Encoder().encode(comment) else { return }
        
        try await Firestore.firestore().collection("posts").document(postId).collection("post-comments").addDocument(data: commentData)
    }
}
