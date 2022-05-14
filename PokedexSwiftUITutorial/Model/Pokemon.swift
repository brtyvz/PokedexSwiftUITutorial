//
//  Pokemon.swift
//  PokedexSwiftUITutorial
//
//  Created by Berat Yavuz on 14.05.2022.
//

import Foundation
struct Pokemon:Decodable,Identifiable{
    let id : Int
    let name : String
    let imageUrl : String
    let type :String
    
    
}
let MOCK_POKEMON : [Pokemon] = [
    .init(id: 0, name: "balbasar", imageUrl: "1", type: "poison")
]
