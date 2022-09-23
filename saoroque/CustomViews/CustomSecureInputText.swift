//
//  CustomSecureInputText.swift
//  saoroque
//
//  Created by Gabriel on 22/09/22.
//

import SwiftUI

struct CustomSecureInputText: View {
    @State var bindingText: Binding<String>
    var placeHolderText: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        SecureField(placeHolderText, text: bindingText)
            .foregroundColor(.black)
            .frame(height: 65)
            .padding([.trailing, .leading], 20)
            .keyboardType(keyboardType)
            .background(
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(15)
                    .shadow(
                        color: Color.gray.opacity(0.30),
                        radius: 10,
                        x: 0,
                        y: 0
                    )
            )
    }
}

struct CustomSecureInputText_Previews: PreviewProvider {
    @State static var bindingText: String = ""
    
    static var previews: some View {
        
        CustomSecureInputText(bindingText: $bindingText, placeHolderText: "Campo de texto")
    }
}
