//
//  SwiftUIView.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-13.
//

import SwiftUI

struct customTextField: View {
    
    @State var textFieldText: String = ""
    var textFieldPlaceHolder: String = ""
    var title: String?
    
    var body: some View {
        VStack {
            Text(title ?? "Place Holder")
                .frame(maxWidth: .infinity, alignment: .leading)
             
            TextField(textFieldPlaceHolder, text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(.red)
                .font(.headline)
             
        }
    }
}

#Preview {
    customTextField()
}
