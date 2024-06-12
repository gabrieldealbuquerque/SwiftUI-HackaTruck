//
//  Lista.swift
//  Aula 4
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        ZStack
        {
            Color(.white)
            NavigationStack
            {
                List {
                    HStack
                    {
                        Text("Rosa")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    HStack
                    {
                        Text("Azul")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                    }
                    HStack
                    {
                        Text("Cinza")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                }.scrollContentBackground(.hidden).navigationTitle("Lista")
            }
            
        }
    }
}

#Preview {
    Lista()
}
