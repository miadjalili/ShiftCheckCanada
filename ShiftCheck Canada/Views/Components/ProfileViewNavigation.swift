//
//  ProfileViewNavigation.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-18.
//

import SwiftUI

struct ProfileViewNavigation: View {
    var userInfo: UserInfo
    var body: some View {
            HStack(spacing: 10) {
                // Profile Information
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50 , height: 50)
                    .clipShape(Circle())
                  
                Text("Hi \(userInfo.firstName)")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Weekly Hours Information
                Spacer()
                Text("Weekly hours: ")
                    .font(.headline)
                    .foregroundColor(.gray) +
                Text("\(13.2, specifier: "%.2f") H")
                    .fontWeight(.bold)
                               .font(.headline)
                
            }
            .cornerRadius(10)
            .shadow(color:.gray,radius: 10)
        }
}

#Preview {
    ProfileViewNavigation(userInfo: UserInfo())
}
