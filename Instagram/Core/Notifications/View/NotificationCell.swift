//
//  NotificationCell.swift
//  Instagram
//
//  Created by Максим Лотіцький on 22/01/2026.
//

import SwiftUI

struct NotificationCell: View {
    let notification: Notification
    
    var body: some View {
        HStack {
            CircularProfileImageView( size: .small)
            
            // notification message
            HStack {
                Text("yuki")
                    .font(.subheadline)
                    .fontWeight(.semibold) +
                Text(" \(notification.type.notificationMessage)")
                    .font(.subheadline) +
                
                Text(" 3w")
                    .foregroundStyle(.gray)
                    .font(.footnote)
            }
            
            Spacer()
            
            if notification.type != .follow {
                Image("profile_picture_default")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 44, height: 44)
                    .clipped()
                    .padding(.leading, 5)
            } else {
                Button {
                    print("DEBUG: Handle follow here..")
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 88, height: 32)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }

            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell(notification: DeveloperPreview.shared.notifications[2])
}
