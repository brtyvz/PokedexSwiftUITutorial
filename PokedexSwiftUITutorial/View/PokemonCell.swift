//
//  PokemonCell.swift
//  PokedexSwiftUITutorial
//
//  Created by Berat Yavuz on 13.05.2022.
//

import SwiftUI
import Kingfisher
struct PokemonCell: View {
    let pokemon : Pokemon
    let viewModel : PokemonViewModel
    let backgroundColor : Color
    init(pokemon:Pokemon,viewModel:PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
        
    }
    var body: some View {
        ZStack{
            
            VStack(alignment:.leading){
                Text(pokemon.name)
                    .padding(.leading)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(.top,4)
                HStack{
                    
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .foregroundColor(.white)
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height:24)
                    
                    
                    KFImage(URL(string: pokemon.imageUrl)).resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68).foregroundColor(.white)
                        .padding([.bottom,.trailing],4)
                    
                    
                }
               
                
             
                
            }
            
        
            
        }.background(backgroundColor)
            
            .cornerRadius(12)
            .shadow(color: backgroundColor, radius: 6, x: 0, y: 0)
    }
}

//struct PokemonCell_Previews: PreviewProvider {
//    static var previews: some View {
//        PokemonCell(pokemon: MOCK_POKEMON[0])
//    }
//}
