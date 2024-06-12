//
//  Modo 3.swift
//  Aula 4.1
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct Modo3: View {
    @State var novoNome: String = ""
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack
            {
                Text("Modo 2")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Spacer()
                Text("Volte, \(novoNome)")
                    .foregroundStyle(.white)
                    .frame(width: 150, height: 100)
                    .background(.pink)
                    .cornerRadius(15)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
        }
    }
}

#Preview {
    Modo3()
}
