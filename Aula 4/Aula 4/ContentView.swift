//
//  ContentView.swift
//  Aula 4
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            Rosa()
                .tabItem {
                    Image(systemName: "paintbrush.fill")
                    Text("Rosa")
                }
            Azul()
                .tabItem {
                    Image(systemName: "paintbrush.pointed.fill")
                    Text("Azul")
                }
            Cinza()
                .tabItem {
                    Image(systemName: "paintpalette.fill")
                    Text("Cinza")
                }
            Lista()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Lista")
                }
        }.onAppear()
        {
            UITabBar.appearance().backgroundColor = UIColor.white
        }
    }
}

#Preview {
    ContentView()
}
