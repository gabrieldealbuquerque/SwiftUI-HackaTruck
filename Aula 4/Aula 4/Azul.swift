//
//  Azul.swift
//  Aula 4
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct Azul: View {
    var body: some View {

            VStack
            {
                ZStack{
                    Color(.blue).frame(width: 1000, height: 5100)
                    Circle().frame(width: 300, height: 300)
                    Image(systemName: "paintbrush.pointed")
                        .resizable()
                        .frame(width: 200, height: 200).foregroundColor(.blue)
                }
                
            }
            .padding()

    }
}

#Preview {
    Azul()
}
