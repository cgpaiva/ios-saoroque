//
//  PositiveButton.swift
//  saoroque
//
//  Created by Gabriel on 22/09/22.
//

import SwiftUI

struct PositiveButton: View {
    var title: String
    var event:() -> Void = { }
    var body: some View {
        Button(title) {
            event()
        }
        .frame(width: UIScreen.main.bounds.width, height: 50)
        .padding([.trailing, .leading], -40)
        .background(Color("background_positive_button"))
        .foregroundColor(.white)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("background_positive_button"), lineWidth: 10))
        .padding(.top, 50)
    }
}

struct PositiveButton_Previews: PreviewProvider {
    static var previews: some View {
        PositiveButton(title: "Botão Positivo")
    }
}
