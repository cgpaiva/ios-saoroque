//
//  LightButton.swift
//  saoroque
//
//  Created by Gabriel on 22/09/22.
//

import SwiftUI

struct LightButton: View {
    var title: String
    var event:() -> Void = { }
    var body: some View {
        Button(title) {
            event()
        }
        .frame(width: UIScreen.main.bounds.width, height: 50)
        .padding([.trailing, .leading], -40)
        .background(Color("green_light"))
        .foregroundColor(.white)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("green_light"), lineWidth: 10))
        .padding(.top, 20)
    }
}

struct LightButton_Previews: PreviewProvider {
    static var previews: some View {
        LightButton(title: "Light button")
    }
}
