//
//  UserModel.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-13.
//


import Foundation


struct UserModel {
    var userInfo: [UserInfo]
   
}


struct UserInfo {
    var firstName: String = ""
    var lastName: String = ""
    var companyName: String = ""
    var companyAddress: String = ""
    var phoneNumber: String = ""
}
