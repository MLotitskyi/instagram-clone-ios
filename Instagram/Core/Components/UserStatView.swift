//
//  UserStatView.swift
//  Instagram
//
//  Created by Максим Лотіцький on 14/12/2025.
//

import SwiftUI

struct UserStatView: View {
    @State var value: Int
    @State var title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 84)
    }
}

#Preview {
    UserStatView(value: 3, title: "Posts")
}
