//
//  DeveloperPreview.swift
//  Instagram
//
//  Created by Максим Лотіцький on 22/01/2026.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let notifications: [Notification] = [
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "456", type: .comment),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "789", type: .follow),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "124", type: .like),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "125", type: .like),
    ]
}
