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
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var companies: [CompanyInfo]
    var allIncome: Double
    
}

struct CompanyInfo {
    
    var companyName: String
    var companyAddress: String
    var salaryRangePerHour: Double
    var workHours: [workHoursInfo]
    
}

struct workHoursInfo {
    var punchIn: Date
    var punchOut: Date
}
