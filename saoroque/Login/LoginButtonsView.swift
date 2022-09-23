//
//  LoginButtonsView.swift
//  saoroque
//
//  Created by Gabriel on 22/09/22.
//

import SwiftUI

struct LoginButtonsView: View {
    var screenSize: CGSize
    var body: some View {
        VStack {
            
            Button("Esqueceu a senha?") {
                
            }
            .frame(width: screenSize.width, alignment: .trailing)
            .padding(.trailing, 60)
            .padding(.top, 20)
            .foregroundColor(Color("green_link"))
            
            PositiveButton(title: "Entrar")
            
            HStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.gray)
                    .padding(.leading, 60)
                Text("ou")
                    .foregroundColor(Color.gray)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.gray)
                    .padding(.trailing, 60)
            }
            .padding(.top, 20)
            
            LightButton(title: "Criar nova conta")
                .padding(.bottom, 50)
        }
    }
}

struct LoginButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonsView(screenSize: CGSize(width: 400, height: .max))
    }
}
