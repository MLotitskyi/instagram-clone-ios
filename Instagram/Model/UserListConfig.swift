//
//  UserListConfig.swift
//  Instagram
//
//  Created by Максим Лотіцький on 21/01/2026.
//

import Foundation

enum UserListConfig: Hashable {
    case followers (uid: String)
    case following (uid: String)
    case likes (id: String)
    case explore
    
    var navigationTitle: String {
        switch self {
        case .followers: return "Followers"
        case .following: return "Following"
        case .likes: return "Likes"
        case .explore: return "Explore"
        }
    }
}
