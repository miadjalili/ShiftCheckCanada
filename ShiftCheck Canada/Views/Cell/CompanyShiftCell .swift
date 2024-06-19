//
//  CompanyShiftCell .swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-18.
//

import SwiftUI

struct CompanyShiftCell: View {
    var body: some View {
        VStack(alignment:.leading,spacing: 20){
            HStack(spacing: 20){
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80 , height: 80)
                    .clipShape(Circle())
                VStack(alignment:.leading){
                    
                    Text("Company Name ")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Location")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                
              
            }
            HStack(spacing:70)
            {
                Button {
                    print("Punch In")
                } label: {
                    Text("Punch In")
                }
                .ButtonStyle(ModeButton: .Save)
                Button {
                    print("Punch Out")
                } label: {
                    Text("Punch Out")
                       
                }
                .ButtonStyle(ModeButton: .Cancel)
                
            }
            
            
        }
        .padding()
        .background(Color.teal)
        .cornerRadius(5)
        .shadow(color:Color.teal,radius: 10)
        
    }
       
}

#Preview {
    CompanyShiftCell()
}
