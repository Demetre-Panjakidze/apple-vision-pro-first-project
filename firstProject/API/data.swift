//
//  data.swift
//  firstProject
//
//  Created by Omedia Mac Mini Flutter on 26.02.24.
//

import Foundation

struct Joke: Codable {
    let categories: [String]
    let created_at: String
    let icon_url: String
    let id: String
    let updated_at: String
    let url: String
    let value: String
}

/*
 {"categories":[],"created_at":"2020-01-05 13:42:20.568859","icon_url":"https://assets.chucknorris.host/img/avatar/chuck-norris.png","id":"S8oLPVgoSem6pOi3aWXkrA","updated_at":"2020-01-05 13:42:20.568859","url":"https://api.chucknorris.io/jokes/S8oLPVgoSem6pOi3aWXkrA","value":"When Chuck Norris reads a bedtime story you sleep forever."}
 */
