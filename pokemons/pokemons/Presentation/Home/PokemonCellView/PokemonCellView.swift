//
//  PokemonCellView.swift
//  pokemons
//
//  Created by Pablo Jesús Peragón Garrido on 24/6/24.
//

import SwiftUI

struct PokemonCellView: View {
    var pokemon: Pokemon
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
    }
    
    var body: some View {
        HStack{
            // Image
            AsyncImage(url: URL(string: pokemon.url))
            
            // Name
            Text(pokemon.name)
                .fontWeight(.bold)
                .font(.system(size: 24))
        }
    
        }
    }

#Preview {
    PokemonCellView(pokemon: Pokemon(id: "1", name: "bulbasaur", url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"))
}
