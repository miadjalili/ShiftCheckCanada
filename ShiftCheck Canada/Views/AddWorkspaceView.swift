//
//  AddWorkspaceView.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-13.
//

import SwiftUI

struct AddWorkspaceView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var userModel: UserInfo
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
        
            VStack(alignment: .trailing){
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .font(.title)
                        
                }
                customTextField(textFieldText: $userModel.firstName, textFieldPlaceHolder: "Enter your first name", title: "First Name")
                customTextField(textFieldText: $userModel.lastName, textFieldPlaceHolder: "Enter your last name", title: "Last Name")
                customTextField(textFieldText: $userModel.companyName, textFieldPlaceHolder: "Enter your company name", title: "Company Name")
                customTextField(textFieldText: $userModel.companyAddress, textFieldPlaceHolder: "Enter the company address", title: "Company Address")
                customTextField(textFieldText: $userModel.phoneNumber, textFieldPlaceHolder: "Enter your phone number", title: "Phone Number")
                
                Spacer()
                Button {
                    saveWorkPlace()
                } label: {
                    Text("Save")
                        .ButtonStyle(ModeButton: .Save)
                }
                
                Button {
                    
                } label: {
                    Text("Cancel")
                        .ButtonStyle(ModeButton: .Cancel)
                }

            }
            .padding()
          
        }
        Spacer()

     
    }
    
    func saveWorkPlace() {
//            guard validateUserModel(userModel) else {
//                print("Validation failed. Please check the input fields.")
//                return
//            }
            let dataToSave = prepareDataForSaving(userModel)
            saveData(dataToSave)
            showSaveConfirmation()
            presentationMode.wrappedValue.dismiss()
            print("User Model saved successfully: \(userModel)")
        }
        
        func validateUserModel(_ userInfo: UserInfo) -> Bool {
            return !userInfo.firstName.isEmpty &&
                   !userInfo.lastName.isEmpty &&
                   !userInfo.companyName.isEmpty &&
                   !userInfo.companyAddress.isEmpty &&
                   !userInfo.phoneNumber.isEmpty
        }
        
        func prepareDataForSaving(_ userInfo: UserInfo) -> [String: Any] {
            return [
                "firstName": userInfo.firstName,
                "lastName": userInfo.lastName,
                "companyName": userInfo.companyName,
                "companyAddress": userInfo.companyAddress,
                "phoneNumber": userInfo.phoneNumber
            ]
        }
        
        func saveData(_ data: [String: Any]) {
            print("Saving data: \(data)")
        }
        
        func showSaveConfirmation() {
            print("Data saved successfully!")
        }
        
        func resetForm() {
            userModel = UserInfo()
        }
    }

#Preview {
    AddWorkspaceView(userModel: .constant(UserInfo()))
}
