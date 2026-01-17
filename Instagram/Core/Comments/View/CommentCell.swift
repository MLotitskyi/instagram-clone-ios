//
//  CommentCell.swift
//  Instagram
//
//  Created by Максим Лотіцький on 17/01/2026.
//

import SwiftUI

struct CommentCell: View {
    
    private var user: User {
        return User.MOCK_USERS[0]
    }
    var body: some View {
        HStack {
            CircularProfileImageView(user: user, size: .xSmall)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Text(user.username)
                        .fontWeight(.semibold)
                    
                    Text("6d")
                        .foregroundStyle(.gray)
                }
                
                Text("How's the back of my car look?")
            }
            .font(.caption)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    CommentCell()
}
