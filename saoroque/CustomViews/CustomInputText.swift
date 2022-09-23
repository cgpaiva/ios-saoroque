//
//  CustomInputText.swift
//  saoroque
//
//  Created by Gabriel on 22/09/22.
//

import SwiftUI

struct CustomInputText: View {
    
    @State var bindingText: Binding<String>
    var placeHolderText: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        TextField(placeHolderText, text: bindingText)
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

struct CustomInputText_Previews: PreviewProvider {
    
    @State static var bindingText: String = ""
    
    static var previews: some View {
        
        CustomInputText(bindingText: $bindingText, placeHolderText: "Campo de texto")
    }
}
