//
//  PokedexView.swift
//  PokedexSwiftUITutorial
//
//  Created by Berat Yavuz on 14.05.2022.
//

import SwiftUI

struct PokedexView: View {
    @State var searchText = ""
    @ObservedObject var viewModel = PokemonViewModel()
    private let gridItem = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                
                //Searchbar
//                HStack{
//                    TextField("Search Pokemon", text: $searchText )
//                }
//                .padding()
//                .background(Color.gray.opacity(0.25))
//                .cornerRadius(6)
//                .padding(.horizontal)
                
                
                LazyVGrid(columns:gridItem ,spacing: 22 ){

                    ForEach(
//                        (viewModel.pokemon).filter({"\($0)".contains(searchText.lowercased())||searchText.isEmpty })

                        
                        
                        (viewModel.pokemon).filter({$0.name.contains(searchText.lowercased())||searchText.isEmpty })
                    )
                    
                    { pokemon in
                        NavigationLink {
                            PokemonDetailView(pokemon: pokemon, viewModel: viewModel)
                        } label: {
                            PokemonCell(pokemon: pokemon, viewModel: viewModel)
                        }

                       
                        
                    }
                    
                }
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Pokedex")
        }
    }
   

    
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
