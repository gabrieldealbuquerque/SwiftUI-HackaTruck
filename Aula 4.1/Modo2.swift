//
//  Modo 2.swift
//  Aula 4.1
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct Modo2: View {
    
    @State private var nome: String = ""
    var body: some View {
        ZStack
        {
            Color("roxohacka").ignoresSafeArea()
            VStack
            {
                Text("Modo 2").font(.largeTitle)
                    .foregroundStyle(.white)
                Spacer()
                ZStack
                {
                   
                    Rectangle().frame(width: 300, height: 240).cornerRadius(10).foregroundColor(.pink)
                    VStack
                    {
                        Spacer()
                        Spacer()
                        Spacer()
                        TextField("Nome", text: $nome).foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                        Text("Bem-vindo, \(nome)")
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                            .font(.title)
                        Spacer()
                        NavigationLink(destination: Modo3(novoNome: nome))
                        {
                            Text("Acessar Tela")
                                .foregroundStyle(.white)
                                .frame(width: 130, height: 65)
                                .background(.blue)
                                .cornerRadius(5)
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    Modo2()
}
