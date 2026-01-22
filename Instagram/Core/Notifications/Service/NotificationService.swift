//
//  NotificationService.swift
//  Instagram
//
//  Created by Максим Лотіцький on 22/01/2026.
//

import Foundation

class NotificationService {
    
    func fetchNotifications() async throws -> [Notification] {
        return DeveloperPreview.shared.notifications
    }
    
    func uploadNotification(toUid uid: String, type: NotificationType) {
        
    }
}
