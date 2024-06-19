//
//  ButtonModifiers.swift
//  ShiftCheck Canada
//
//  Created by Miad Jalili on 2024-06-18.
//

import SwiftUI

struct ButtonModifiers: ViewModifier {
    let  ModeButton: modeButton
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(buttonColor)
            .cornerRadius(10)
            .shadow(radius: 10)
        
    }
    
    
    var buttonColor: Color {
        switch ModeButton {
        case .Save:
            return .green
        case .Cancel:
            return .red
        case .retry:
            return .yellow
        }
    }
    
  
}


extension View {
    func ButtonStyle(ModeButton : modeButton = .Save) -> some View {
        modifier(ButtonModifiers(ModeButton: ModeButton))
    }
}



