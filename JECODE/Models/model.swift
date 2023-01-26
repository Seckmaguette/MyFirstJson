//
//  model.swift
//  JECODE
//
//  Created by Maguette SECK on 23/01/2023.
//

import Foundation

//struct Stagiaire : Decodable {
//    var id:Int
//    var name : String
//    var age : Int
//}

struct Person: Codable , Identifiable {
    
    let id: Int
    let name: String
    let age: Int
}


