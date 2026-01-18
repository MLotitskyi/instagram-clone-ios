//
//  CommentCell.swift
//  Instagram
//
//  Created by Максим Лотіцький on 17/01/2026.
//

import SwiftUI

struct CommentCell: View {
    
    let comment: Comment
    
    private var user: User? {
        return comment.user
    }
    
    var body: some View {
        HStack {
            CircularProfileImageView(user: user, size: .xSmall)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Text(user?.username ?? "")
                        .fontWeight(.semibold)
                    
                    Text("6d")
                        .foregroundStyle(.gray)
                }
                
                Text(comment.commentText)
            }
            .font(.caption)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    CommentCell(comment: Comment.MOCK_COMMENT[0])
}
