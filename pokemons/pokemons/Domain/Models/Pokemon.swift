//
//  Pokemon.swift
//  pokemons
//
//  Created by Pablo Jesús Peragón Garrido on 25/6/24.
//

import Foundation

struct Pokemon: Decodable {
    let name: String
    let url: String
}

struct Result: Codable {
    let name: String
    let url: String
}
