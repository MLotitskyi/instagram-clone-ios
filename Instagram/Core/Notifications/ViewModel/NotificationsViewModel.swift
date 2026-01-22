//
//  NotificationsViewModel.swift
//  Instagram
//
//  Created by Максим Лотіцький on 22/01/2026.
//

import Foundation
internal import Combine

class NotificationsViewModel: ObservableObject {
    @Published var notifications = [Notification]()
    
    init() {
        fetchNotifications()
    }
    
    func fetchNotifications() {
        self.notifications = DeveloperPreview.shared.notifications
    }
}
