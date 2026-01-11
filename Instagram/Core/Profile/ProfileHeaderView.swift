//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // pic and stats
            HStack {
                Image(user.profileImageUrl ?? "profile_picture_default")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 12) {
                    UserStatView(value: 3, title: "Posts")
                    
                    UserStatView(value: 3, title: "Followers")
                    
                    UserStatView(value: 1, title: "Following")
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 4)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullName = user.fullName {
                    Text(fullName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.bottom, 16)
            
            //action button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(.gray, lineWidth: 1))
            }
            
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
