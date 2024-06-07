//
//  ContentView.swift
//  Aula1
//
//  Created by Turma02-9 on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("RedSquare").resizable()
                .frame(width: 100, height: 100)
                .offset(x: -100, y: -145)
            Image("RedSquare").resizable()
                .frame(width: 100, height: 100)
                .offset(x: 100, y: -250)
            Image("RedSquare").resizable()
                .frame(width: 100, height: 100)
                .offset(x: 100, y: 250)
            Image("RedSquare").resizable()
                .frame(width: 100, height: 100)
                .offset(x: -100, y: 100)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
