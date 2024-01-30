//
//  EzOutAuthUIApp.swift
//  EzOutAuthUI
//
//  Created by Hank Gu on 1/30/24.
//

import SwiftUI
import Firebase


@main
struct EzOutAuthUIApp: App {
    @ StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
