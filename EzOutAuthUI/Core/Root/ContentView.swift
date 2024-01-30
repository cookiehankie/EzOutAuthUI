//
//  ContentView.swift
//  EzOutAuthUI
//
//  Created by Hank Gu on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ProfileView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//VStack {
//    Image(systemName: "globe")
//        .imageScale(.large)
//        .foregroundStyle(.tint)
//    Text("Hello, world!")
//}
//.padding()
