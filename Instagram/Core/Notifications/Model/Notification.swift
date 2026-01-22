//
//  Notification.swift
//  Instagram
//
//  Created by Максим Лотіцький on 22/01/2026.
//

import Firebase

struct Notification: Codable, Identifiable {
    let id: String
    var postId: String?
    let timestamp: Timestamp
    let notificationSenderUid: String
    let type: NotificationType
    
    var post: Post?
    var user: User?
}
