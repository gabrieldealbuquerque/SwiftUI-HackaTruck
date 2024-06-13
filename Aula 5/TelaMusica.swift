//
//  TelaMusica.swift
//  Aula 5
//
//  Created by Turma02-9 on 12/06/24.
//

import SwiftUI

struct TelaMusica: View {
    @State var musicaAberta: Song
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TelaMusica(musicaAberta: Song(name: "Teste", artist: "Teste", capa:"https://soranews24.com/wp-content/uploads/sites/3/2012/08/vocaloid-full-7474891.jpg"))
}
