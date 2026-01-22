//
//  NotificationType.swift
//  Instagram
//
//  Created by Максим Лотіцький on 22/01/2026.
//

import Foundation

enum NotificationType: Int, Codable {
    case like
    case comment
    case follow
    
    var notificationMessage: String {
        switch self {
            case .like: return "liked one of your posts."
            case .comment: return "commented on one of your posts."
            case .follow: return "started following you."
        }
    }
}
