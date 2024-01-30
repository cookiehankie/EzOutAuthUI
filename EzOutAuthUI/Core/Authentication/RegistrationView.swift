//
//  RegistrationView.swift
//  EzOutAuthUI
//
//  Created by Hank Gu on 1/30/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @ State private var email = ""
    @ State private var fullname = ""
    @ State private var password = ""
    @ State private var confirmPassword = ""
    @ Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack () {
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
                .padding(.vertical, 32)
            
            VStack(spacing: 24) {
                InputView(text: $email,
                          title: "Email Address",
                          placeholder: "name@example.com")
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                InputView(text: $fullname,
                          title: "Full Name",
                          placeholder: "Enter Your Name")
                
                InputView(text: $password,
                          title: "Password",
                          placeholder: "Enter Your Pasword",
                isSecureField: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeholder: "Confirm Your Pasword",
                isSecureField: true)
                
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Button {
                print("Sign User Up ... ")
            } label: {
                HStack {
                    Text ("SIGN UP")
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
            
            Button {
                dismiss()
            } label: {
                HStack (spacing: 3){
                    Text ("Already Have an Account?")
                    Text ("SIGN IN")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    RegistrationView()
}
