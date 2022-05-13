//
//  PokemonCell.swift
//  PokedexSwiftUITutorial
//
//  Created by Berat Yavuz on 13.05.2022.
//

import SwiftUI

struct PokemonCell: View {
    var body: some View {
        ZStack{
            
            VStack(alignment:.leading){
                Text("Bulbauseur")
                    .padding(.leading)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(.top,4)
                HStack{
                    
                    Text("Poison")
                        .font(.subheadline).bold()
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .foregroundColor(.white)
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height:24)
                    
                    
                    Image("1").resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68).foregroundColor(.white)
                        .padding([.bottom,.trailing],4)
                    
                    
                }
               
                
             
                
            }
            
        
            
        }.background(Color.green)
            
            .cornerRadius(12)
            .shadow(color: .green, radius: 6, x: 0, y: 0)
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell()
    }
}
