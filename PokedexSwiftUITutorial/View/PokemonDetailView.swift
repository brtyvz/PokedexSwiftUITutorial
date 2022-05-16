//
//  PokemonDetailView.swift
//  PokedexSwiftUITutorial
//
//  Created by Berat Yavuz on 15.05.2022.
//

import SwiftUI
import StockCharts
import Kingfisher
struct PokemonDetailView: View {
    let pokemon : Pokemon
    let viewModel : PokemonViewModel
    let backgroundColor : Color
  
    init (pokemon:Pokemon,viewModel:PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))

    }
    var body: some View {
        VStack(alignment: .center){
            KFImage(URL(string: pokemon.imageUrl)).resizable().padding(.top)
                .scaledToFit()
                .frame(width: 200, height: 208).foregroundColor(.white)
              
            
            Text(pokemon.name.capitalized).padding().font(.title)
            ZStack{            Text(pokemon.type)
                    .font(.subheadline).bold()
                    .padding(.horizontal,16)
                    .padding(.vertical,8)
                    .foregroundColor(.black)
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color( viewModel.backgroundColor(forType: pokemon.type)).opacity(0.50))
                    )
                    .frame(width: 100, height:24)}
           
            Spacer()
            
            Text(pokemon.description) .minimumScaleFactor(0.2).padding(.leading,5)
            Spacer()
            Spacer()
            
//             Text("Stats").padding(.bottom).font(.title)
            
            Section(header:Text("Stats").font(.title).foregroundColor(Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.50))) {
                Text("Attack:\(pokemon.attack)")
                Text("Defense:\(pokemon.defense)")
                Text("Weight:\(pokemon.weight)")
                Text("Height:\(pokemon.height)")
            }.padding(.bottom)
            
          
            }
       
        
    }
}

//struct PokemonDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PokemonDetailView(pokemon: "", viewModel: "dd")
//    }
//}