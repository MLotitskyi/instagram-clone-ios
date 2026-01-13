//
//  User.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Maksym", profileImageUrl: "profile_picture_1", fullname: "Maksym Lotitskyi", bio: "Some bio", email: "user1@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user2", profileImageUrl: "profile_picture_2", fullname: "User Two", bio: "Another bio", email: "user2@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user3", profileImageUrl: "profile_picture_3", fullname: "User Three", email: "user3@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user4", profileImageUrl: "profile_picture_4", fullname: "User Four", bio: "Just bio", email: "user4@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user5", profileImageUrl: "profile_picture_5", fullname: "User Five", email: "user5@gmail.com"),
        .init(id: NSUUID().uuidString, username: "user6", profileImageUrl: "profile_picture_6", fullname: "User Six", bio: "Last bio", email: "user6@gmail.com")
    ]
}
