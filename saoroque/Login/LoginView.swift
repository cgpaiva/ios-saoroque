//
//  ContentView.swift
//  sao-roque
//
//  Created by Gabriel on 16/09/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        GeometryReader { view in
            NavigationView {
                ScrollView {
                    VStack {
                        LoginHeaderView(screenWidth: view.size.width)
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
