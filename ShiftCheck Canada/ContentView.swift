//
//  ContentView.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-04-07.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddButton = true
    @State var showSheet = false
    @ObservedObject var viewModel: UserViewModel = UserViewModel()
   
    
    var body: some View {
        VStack {
            if showAddButton {
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    VStack(content: {
                        Circle()
                             .fill(Color.white)
                             .frame(width: 100,height: 100)
                             .shadow(radius: 10)
                             .overlay {
                                 Image(systemName: "plus")
                                     .font(.largeTitle)
                             }
                        Text("Add Shifts")
                            .padding(5)
                    })
                    .sheet(isPresented: $showSheet) {
                        AddWorkspaceView(userModel: .constant(UserInfo()))
                    }
                    
                }
                       
                   )
                
            }else{
                VStack {
                    ProfileViewNavigation(userInfo: viewModel.userinfo.first!)
                    
             
                        CompanyShiftCell()
                     
                }
                .padding()
                Spacer()
                
               
            }
        
          
            }
        .onChange(of: viewModel.isEmpty) { isEmpty in
            if isEmpty {
                showAddButton = true
            }
        }
        .task {
            await viewModel.getUserInfo()
        }
        
        
        }
    
}

#Preview {
    ContentView()
}
