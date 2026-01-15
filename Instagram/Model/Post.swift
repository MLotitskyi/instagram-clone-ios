//
//  Post.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import Foundation
import FirebaseCore

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String?
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Some caption", likes: 29, imageUrl: "picture_1_2", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Summer", likes: 36, imageUrl: "picture_1_3", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: nil, likes: 16, imageUrl: "picture_4_1", timestamp: Timestamp(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Just wanna be alive", likes: 47, imageUrl: "picture_2_2", timestamp: Timestamp(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Dope", likes: 89, imageUrl: "picture_5_1", timestamp: Timestamp(), user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Dope1", likes: 35, imageUrl: "picture_5_2", timestamp: Timestamp(), user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Dope2", likes: 67, imageUrl: "picture_5_3", timestamp: Timestamp(), user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "caption", likes: 15, imageUrl: "picture_6_1", timestamp: Timestamp(), user: User.MOCK_USERS[5]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "So nice ...", likes: 102, imageUrl: "picture_3_4", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "My dream", likes: 69, imageUrl: "picture_3_1", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "On my vehicle", likes: 34, imageUrl: "picture_1_4", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Winter", likes: 36, imageUrl: "picture_1_1", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Luck...", likes: 59, imageUrl: "picture_2_1", timestamp: Timestamp(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "just caption", likes: 63, imageUrl: "picture_3_3", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: nil, likes: 54, imageUrl: "picture_3_2", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: nil, likes: 26, imageUrl: "picture_1_5", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Another caption", likes: 99, imageUrl: "picture_6_2", timestamp: Timestamp(), user: User.MOCK_USERS[5]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: nil, likes: 24, imageUrl: "picture_6_3", timestamp: Timestamp(), user: User.MOCK_USERS[5])
    ]
}
