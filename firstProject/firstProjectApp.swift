//
//  firstProjectApp.swift
//  firstProject
//
//  Created by Omedia Mac Mini Flutter on 26.02.24.
//

import SwiftUI

@main
struct firstProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
