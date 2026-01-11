//
//  ProfileView.swift
//  Instagram
//
//  Created by Максим Лотіцький on 14/12/2025.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.userName == user.userName })
    }
    
    var body: some View {
        ScrollView {
            // header
            ProfileHeaderView(user: user)
            
            // post grid view
            PostGridView(posts: posts)
                .padding(.horizontal, 1)
            
        }
        .navigationTitle(user.userName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
