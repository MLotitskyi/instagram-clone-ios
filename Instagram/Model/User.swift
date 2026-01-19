//
//  User.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isFollowed: Bool? = false
    
    var isCurrentUser: Bool {
        guard let currentUId = Auth.auth().currentUser?.uid else { return false }
        return currentUId == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Maksym", profileImageUrl: nil, fullname: "Maksym Lotitskyi", bio: "Some bio", email: "user1@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user2", profileImageUrl: nil, fullname: "User Two", bio: "Another bio", email: "user2@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user3", profileImageUrl: nil, fullname: "User Three", email: "user3@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user4", profileImageUrl: nil, fullname: "User Four", bio: "Just bio", email: "user4@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user5", profileImageUrl: nil, fullname: "User Five", email: "user5@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user6", profileImageUrl: nil, fullname: nil, bio: "Last bio", email: "user6@gmail.com")
    ]
}
