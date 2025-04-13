//
//  ContentView.swift
//  AssignmentO2
//
//  Created by ZKMax01 on 13/04/2025.
//

import SwiftUI
import DesignKit

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    //Example of use custom style
    let standardStyle = InputStyle(
        borderColor: Color.App.Content.OnNeutral.danger,
        textColor: .red,
        placeholderColor: .orange,
        validationMessageColor: .blue,
        font: Font.App.Body.m,
        padding: 20,
        borderWidth: 4,
        cornerRadius: 16
    )
    
    var body: some View {
        VStack(spacing: Styling.spacingM) {
            VStack(alignment: .leading) {
                Text("Username")
                    .applyLabelSStyle()
                TextInput(text: $username, placeholder: "Username")
                    .accessibilityLabel("Enter your username")
                    .accessibilityHint("Please enter your username")
            }
            VStack(alignment: .leading) {
                Text("Password")
                    .applyLabelSStyle()
                PasswordInput(
                    text: $password,
                    placeholder: "Password",
                    passwordMinLength: 8,
                    validationCharacterMessage: "Password must be at least \(8) characters long.",
                    validationSymbolMessage: "Password must include at least one uppercase letter and one symbol."
                )
                .accessibilityHint("Password must be at least 8 characters long and include at least one uppercase letter and one symbol.")
                .accessibilityLabel("Enter your password")
            }
        }
        .padding()
        .environment(\.inputStyle, InputStyle())
        
        // Use standardStyle here instead of InputStyle(), but its only for example
        //.environment(\.inputStyle, standardStyle)
        
    }
}

#Preview {
    ContentView()
}
