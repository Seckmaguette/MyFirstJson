//
//  ContentView.swift
//  JECODE
//
//  Created by Maguette SECK on 23/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PersonList( )

        }
        .padding()
    }
}

struct PersonList: View {
    @ObservedObject var dataLoader = ListPersonViewModel()

    var body: some View {
        Text("La liste des stagiaires")
            .font(.largeTitle)
            .fontWeight(.bold)
        List(dataLoader.people) { person in
        
            Text("\(person.id)\(person.name) a \(person.age) ans")
        }.onAppear {
            self.dataLoader.loadData()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

