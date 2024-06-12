//
//  Modo 1.swift
//  Aula 4.1
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        ZStack
        {
            Color("roxohacka").ignoresSafeArea()
            Rectangle().frame(width: 250, height: 150).cornerRadius(10).foregroundColor(.pink)
            VStack
            {
                Text("Nome: Tod").foregroundStyle(.white)
                Text("Sobrenome: Santos").foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    Modo1()
}
