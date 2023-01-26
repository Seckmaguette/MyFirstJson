//
//  ViewM.swift
//  JECODE
//
//  Created by Maguette SECK on 23/01/2023.
//

import Foundation



//class PersonViewModel: ObservableObject {
//    @Published var people: [Person] = []
//
//    func loadData() {
//        let dataLoader = DataLoader()
//        people = dataLoader.loadData()
//    }
//}

//class PersonViewModel: ObservableObject {
//    @Published var people: [Person] = []
//
//    func loadData() {
//        let dataLoader = DataLoader()
//        people = dataLoader.loadData()
//    }
//}

//func loadData() {
//        if let url = Bundle.main.url(forResource: "stage", withExtension: "json") {
//            do {
//                let data = try Data(contentsOf: url)
//                let decoder = JSONDecoder()
//                people = try decoder.decode([Person].self, from: data)
//            } catch {
//                print("Error decoding data: \(error)")
//            }
//        }
//    }

class ListPersonViewModel: ObservableObject {
    @Published var people: [Person] = []

    func loadData() {
            if let url = Bundle.main.url(forResource: "stage", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    people = try decoder.decode([Person].self, from: data)
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
    
}
