//
//  ContentView.swift
//  iDine
//
//  Created by Teodoro Calle Lara on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Text(section.name)
                        .bold()
                        .font(.largeTitle)
                    
                    ForEach(section.items) { item in
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    ContentView()
}
