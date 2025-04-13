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
    let standardStyle = ImputStyle(
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
                TextImput(text: $username, placeholder: "Username")
            }
            VStack(alignment: .leading) {
                Text("Password")
                    .applyLabelSStyle()
                PasswordImput(
                    text: $password,
                    placeholder: "Password",
                    passwordMinLength: 8,
                    validationCharacterMessage: "Password must be at least \(8) characters long.",
                    validationSymbolMessage: "Password must include at least one uppercase letter and one symbol."
                )
            }
        }
        .padding()
        .environment(\.imputStyle, ImputStyle())//Use standardStyle here instead of ImputStyle()
    }
}

#Preview {
    ContentView()
}
