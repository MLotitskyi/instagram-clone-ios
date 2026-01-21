//
//  SearchView.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            UserListView(config: .explore)
        }
    }
}

#Preview {
    SearchView()
}
