//
//  LoginHeaderView.swift
//  sao-roque
//
//  Created by Gabriel on 16/09/22.
//

import SwiftUI

struct LoginHeaderView: View {
    @State var email = String()
    @State var password = String()
    
    @State var radius: CGFloat = 10
    
    var screnSize: CGSize
    
    var body: some View {

            VStack {
                Image("LogoParoquia")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 40)
                    .frame(maxWidth: 250)
                
                VStack(alignment: .center) {
                    CustomInputText(bindingText: $email, placeHolderText: "Digite seu e-mail")
                        .padding([.trailing, .leading], 30)
                        .padding(.top, 80)
                    
                    CustomSecureInputText(bindingText: $password, placeHolderText: "Digite sua senha")
                        .padding([.trailing, .leading], 30)
                        .padding(.top, 20)
                    
                    LoginButtonsView(screenSize: screnSize)
       
                }
                
                
            }
            .frame(width: screnSize.width)
    }
}

struct LoginHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoginHeaderView( screnSize: CGSize(width: 400, height: .max))
    }
}
