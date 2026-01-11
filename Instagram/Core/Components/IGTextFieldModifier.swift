//
//  IGTextFieldModifier.swift
//  Instagram
//
//  Created by Максим Лотіцький on 15/12/2025.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
            .padding(.top)
    }
}
