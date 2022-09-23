//
//  ContentView.swift
//  saoroque
//
//  Created by Gabriel on 22/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            
            GeometryReader { view in
                ScrollView {
                    VStack {
                        LoginHeaderView(screnSize: view.size)
                    }
                }
                .frame(width: view.size.width, height: view.size.height)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
