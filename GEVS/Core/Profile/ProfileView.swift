//
//  ProfileView.swift
//  GEVS
//
//  Created by Bimsara W Perera on 29/12/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            
            Section{
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        .frame(width: 72, height: 72)
                        .background(.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading,spacing: 4 ){
                        
                        Text(User.MOCK_USER.fullname)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
            }
            Section("General"){
                HStack{
                    SettingsRowView(imageName: "gear",
                                    title: "Version",
                                    tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            Section("Account"){
                Button{
                    print("Sign out..")
                }label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill",
                                    title: "Sign Out", tintColor: .red)
                }
                
                Button{
                    print("Delete account..")
                }label: {
                    SettingsRowView(imageName: "xmark.circle.fill",
                                    title: "Delete Account",
                                    tintColor: .red)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
