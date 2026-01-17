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
    let postOwnerUid: String
    let commentText: String
    let postId: String
    let timestamp: Timestamp
    let commentOwnerUid: String
    
    var user: User?
    
    var id: String {
        return commentId ?? NSUUID().uuidString
    }
}


