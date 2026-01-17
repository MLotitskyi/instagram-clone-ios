//
//  CommentsView.swift
//  Instagram
//
//  Created by Максим Лотіцький on 17/01/2026.
//

import SwiftUI

struct CommentsView: View {
    @State private var commentText = ""
    @StateObject var viewModel: CommentsViewModel
    
    init(post: Post) {
        self._viewModel = StateObject(wrappedValue: CommentsViewModel(post: post))
    }
    
    var body: some View {
        VStack {
            Text("Comments")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.top, 24)
            
            Divider()
            
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0 ... 15, id: \.self) { comment in
                            CommentCell()
                    }
                }
            }
            .padding(.top)
            
            Divider()
            
            HStack(spacing: 12) {
                CircularProfileImageView(user: User.MOCK_USERS[0], size: .xSmall)
                
                ZStack(alignment: .trailing) {
                    TextField("Add a comment...", text: $commentText, axis: .vertical)
                        .font(.footnote)
                        .padding(12)
                        .padding(.trailing, 40)
                        .overlay {
                            Capsule()
                                .stroke(Color(.systemGray5), lineWidth: 1)
                        }
                    
                    Button {
                        Task { try await viewModel.uploadComment(commentText: commentText) }
                    } label: {
                        Text("Post")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.systemBlue))
                    }
                    .padding(.horizontal)

                }
            }
            .padding(12)
        }
    }
}

#Preview {
    CommentsView(post: Post.MOCK_POSTS[0])
}
