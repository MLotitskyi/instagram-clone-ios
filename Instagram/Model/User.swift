//
//  User.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var userName: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, userName: "Maksym", profileImageUrl: "profile_picture_1", fullName: "Maksym Lotitskyi", bio: "Some bio", email: "user1@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "user2", profileImageUrl: "profile_picture_2", fullName: "User Two", bio: "Another bio", email: "user2@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "user3", profileImageUrl: "profile_picture_3", fullName: "User Three", email: "user3@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "user4", profileImageUrl: "profile_picture_4", fullName: "User Four", bio: "Just bio", email: "user4@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "user5", profileImageUrl: "profile_picture_5", fullName: "User Five", email: "user5@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "user6", profileImageUrl: "profile_picture_6", fullName: "User Six", bio: "Last bio", email: "user6@gmail.com")
    ]
}
