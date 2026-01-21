//
//  UserListView.swift
//  Instagram
//
//  Created by Максим Лотіцький on 21/01/2026.
//

import SwiftUI

struct UserListView: View {
    @StateObject var viewModel = UserListViewModel()
    @State private var searchText = ""
    
    private let config: UserListConfig
    
    init(config: UserListConfig) {
        self.config = config
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                ForEach(viewModel.users) { user in
                    NavigationLink(value: user) {
                        HStack(spacing: 12) {
                            CircularProfileImageView(user: user, size: .small)
                            
                            VStack(alignment: .leading) {
                                Text(user.username)
                                    .fontWeight(.semibold)
                                
                                if let fullname = user.fullname {
                                    Text(fullname)
                                }
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .foregroundStyle(.black)
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.top, 8)
            .searchable(text: $searchText, prompt: "Search...")
        }
        .task { await viewModel.fetchUser(forConfig: config) }
        .navigationTitle(config.navigationTitle)
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: User.self, destination: { user in
            ProfileView(user: user)
        })
    }
}

#Preview {
    UserListView(config: .explore)
}
