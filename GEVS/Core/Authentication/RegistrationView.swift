//
//  RegistrationView.swift
//  GEVS
//
//  Created by Bimsara W Perera on 29/12/2023.
//

import SwiftUI

struct RegistrationView: View {

    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{ //image
            Image("firebase-logo")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)
        }
        
        //form fields
        VStack(spacing: 24){
           
            InputView(text: $email,
                      title: "Email Address",
                      placeholder: "Email Address")
            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            
            InputView(text: $fullname,
                      title: "Full Name",
                      placeholder: "Enter your name")

            InputView(text: $password,
                      title: "Password",
                      placeholder: "Enter your password",
                      isSecureField: true)
            
            InputView(text: $confirmPassword,
                      title: "Confirm Password",
                      placeholder: "Confirm your password",
                      isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        //Register button
        
        Button(action: { print("Sign user up..")
            
        },
               label: {
            HStack{
                Text("SIGN UP")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Image(systemName: "arrow.right")
            }
            .foregroundStyle(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48 )
            }
            
        ).background(Color(.systemBlue))
         .cornerRadius(10)
         .padding(.top, 24)
        
        Spacer()
        
        Button{
            dismiss()
        }label: {
            HStack(spacing: 3){
                Text("Already have an account?")
                Text("Sign in")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .font(.system(size: 14))
        }
        
    }
}

#Preview {
    RegistrationView()
}
