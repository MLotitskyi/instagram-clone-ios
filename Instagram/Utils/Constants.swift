//
//  Constants.swift
//  Instagram
//
//  Created by Максим Лотіцький on 18/01/2026.
//

import Firebase

struct FirebaseConstants {
    static let Root = Firestore.firestore()
    
    static let UsersCollection = Root.collection("users")
    
    static let PostsCollection = Root.collection("posts")
}
