//
//  CurrentUserProfileView.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.userName == user.userName })
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(posts: posts)
                .padding(.horizontal, 1)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
