//
//  HomeView.swift
//  pokemons
//
//  Created by Pablo Jesús Peragón Garrido on 25/6/24.
//

import SwiftUI

struct HomeView: View {
    var pokemons: [Pokemon] = []
    
    init(pokemons: [Pokemon]) {
        for i in 1...10 {
            let pokemon = Pokemon(id: "1\(i)", name: "bulbasaur\(i)", url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"
            )
            self.pokemons.append(pokemon)
        }
        
    }
    
    
    var body: some View {
        NavigationView {
            List(self.pokemons) { pokemon in
                PokemonCellView(pokemon: pokemon)
            }
            .navigationTitle("Pokemons")
            .scrollContentBackground(.hidden)
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    HomeView(pokemons: [])
}
