//
//  LoginView.swift
//  EzOutAuthUI
//
//  Created by Hank Gu on 1/30/24.
//

import SwiftUI

struct LoginView: View {
    @ State private var email = ""
    @ State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                // image
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
                    .padding(.vertical, 32)
                
                
                // form fields
                VStack(spacing: 24) {
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter Your Pasword",
                    isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                
                // sign in button
                Button {
                    print("Log User In ... ")
                } label: {
                    HStack {
                        Text ("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                // sign up button
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack (spacing: 3){
                        Text ("Don't Have an Account?")
                        Text ("SIGN UP")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
                
            }
        }
    }
}

#Preview {
    LoginView()
}
