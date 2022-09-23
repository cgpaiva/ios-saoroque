//
//  saoroqueApp.swift
//  saoroque
//
//  Created by Gabriel on 22/09/22.
//

import SwiftUI

@main
struct saoroqueApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
        }
    }
}
