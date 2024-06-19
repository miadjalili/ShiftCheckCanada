//
//  UserViewModel.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-18.
//

import Foundation


final class UserViewModel: ObservableObject {
    
    @Published var userinfo: [UserInfo] = []
    @Published var isEmpty = true
    
    
    func getUserInfo() async {
        
        if userinfo.isEmpty || userinfo.count == 0 {
            //isEmpty = true
        }else
        {
            loadUserInfoFromCoreData()
        }
        
    }
    
    func loadUserInfoFromCoreData() {
       
      
    }
}

