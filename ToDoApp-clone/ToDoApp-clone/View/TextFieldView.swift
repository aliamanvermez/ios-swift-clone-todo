//
//  TextFieldView.swift
//  ToDoApp-clone
//
//  Created by Ali Amanvermez on 3.03.2023.
//

import SwiftUI

struct UnderlinedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical, 70)
            .background(
                VStack {
                    Spacer()
                    Color(UIColor.systemGray4)
                        .frame(height: 2)
                }
            )
    }
}
