//
//  PokedexView.swift
//  PokedexSwiftUITutorial
//
//  Created by Berat Yavuz on 14.05.2022.
//

import SwiftUI

struct PokedexView: View {
    @ObservedObject var viewModel = PokemonViewModel()
    private let gridItem = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
               
                LazyVGrid(columns:gridItem ,spacing: 22 ){

                    ForEach(viewModel.pokemon){ pokemon in
                        NavigationLink {
                            PokemonDetailView(pokemon: pokemon, viewModel: viewModel)
                        } label: {
                            PokemonCell(pokemon: pokemon, viewModel: viewModel)
                        }

                       
                        
                    }
                    
                }
                
            }
            .navigationTitle("Pokedex")
        }
    }
   

    
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
