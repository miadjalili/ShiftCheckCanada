//
//  SwiftUIView.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-13.
//

import SwiftUI

struct customTextField: View {
    
    @Binding var textFieldText: String
    var textFieldPlaceHolder: String = ""
    var title: String?
    
    var body: some View {
        VStack(spacing:5){
            Text(title ?? "Place Holder")
                .foregroundColor(.black)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .leading)
               
            TextField(textFieldPlaceHolder, text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(.black)
                .font(.headline)
                .multilineTextAlignment(.leading)
             
        }
        .padding(.bottom,10)
    }
}

#Preview {
    @State var previewText: String = ""
    customTextField(textFieldText: $previewText)
}
