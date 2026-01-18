//
//  Comment.swift
//  Instagram
//
//  Created by Максим Лотіцький on 17/01/2026.
//

import Firebase
import FirebaseCore
import FirebaseFirestore

struct Comment: Identifiable, Codable {
    @DocumentID var commentId: String?
    let localId: String
    let postOwnerUid: String
    let commentText: String
    let postId: String
    let timestamp: Timestamp
    let commentOwnerUid: String
    
    var user: User?
    
    var id: String {
        return commentId ?? localId
    }
    
    init(postOwnerUid: String, commentText: String, postId: String, timestamp: Timestamp, commentOwnerUid: String, user: User? = nil) {
        self.localId = UUID().uuidString
        self.postOwnerUid = postOwnerUid
        self.commentText = commentText
        self.postId = postId
        self.timestamp = timestamp
        self.commentOwnerUid = commentOwnerUid
        self.user = user
    }
}


extension Comment {
    static var MOCK_COMMENT: [Comment] = [
        Comment(postOwnerUid: "123", commentText: "Hello World", postId: "456", timestamp: Timestamp(), commentOwnerUid: "789")
    ]
}

