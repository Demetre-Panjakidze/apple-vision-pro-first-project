//
//  ContentView.swift
//  firstProject
//
//  Created by Omedia Mac Mini Flutter on 26.02.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var enlarge = false
    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false
    @State private var blaToggle = false
    @State private var joke: String = ""
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        VStack {
            VStack (spacing: 12) {
                Text(joke.isEmpty ? "Press button to  generate joke" : joke)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Button {
                    Task {
                        var newJoke = try await performAPICall()
                        joke = newJoke.value
                    }
                } label: {
                    Text("API call")
                }
            }
            .padding(36)
        }
        .onChange(of: blaToggle) { oldValue, newValue in
            print("old value: \(oldValue). New value: \(newValue).")
        }
    }
}

#Preview(windowStyle: .volumetric) {
    ContentView()
}
