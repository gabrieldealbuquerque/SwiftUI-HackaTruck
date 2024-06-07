//
//  ContentView.swift
//  Aula 2
//
//  Created by Turma02-9 on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = "Fulano"
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Image("Fundo")
                .resizable()
                .imageScale(.small)
                .opacity(0.3)
                .frame(width:800, height:800)
            VStack
            {
                VStack
                {
                    Text("Bem Vindo, \(name)").font(.system(size: 40))
                    TextField("DIGITE SEU NOME", text: $name)
                        .font(.title)
                        .bold().multilineTextAlignment(.center)
                }
                
                Spacer()
                VStack
                {
                    Image("Logo")
                        .resizable()
                        .imageScale(.small)
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                   
                    Image("Caminhao")
                        .resizable()
                        .imageScale(.small)
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                }
                Spacer()
                Button("Entrar")
                {
                    showingAlert = true
                }.alert("*ALERTA!*", isPresented: $showingAlert) {
                    Button("Vamos lá!", role: .cancel) { }
                } message: {
                    Text("Você irá iniciar o desafio da aula agora")
                }
            }.frame(maxHeight: 750)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
