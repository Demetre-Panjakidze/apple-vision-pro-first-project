//
//  api.swift
//  firstProject
//
//  Created by Omedia Mac Mini Flutter on 26.02.24.
//

import Foundation
import SwiftUI

func performAPICall() async throws -> Joke {
    let url = URL(string: "https://api.chucknorris.io/jokes/random")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let wrapper = try JSONDecoder().decode(Joke.self, from: data)
    print(wrapper)
    return wrapper
}
