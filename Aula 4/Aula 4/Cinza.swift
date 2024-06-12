//
//  Cinza.swift
//  Aula 4
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct Cinza: View {
    var body: some View {

            VStack
            {
                ZStack{
                    Color(.gray).frame(width: 1000, height: 5100)
                    Circle().frame(width: 300, height: 300)
                    Image(systemName: "paintpalette")
                        .resizable()
                        .frame(width: 200, height: 200).foregroundColor(.gray)
                }
                
            }
            .padding()

    }
}

#Preview {
    Cinza()
}
