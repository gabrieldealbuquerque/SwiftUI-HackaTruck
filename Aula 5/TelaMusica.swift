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
        ZStack
        {
            LinearGradient(gradient: Gradient(colors: [.black, .blue]), startPoint: .bottom, endPoint: .top).ignoresSafeArea()
            VStack
            {
                Spacer()
                AsyncImage(url: URL(string: musicaAberta.capa)){ result in
                    result.image?
                        .resizable()
                        .frame(width: 250, height:250).cornerRadius(5)
                }
                Text(musicaAberta.name).font(.system(size: 30)).foregroundStyle(.white)
                Text(musicaAberta.artist).font(.system(size: 25)).foregroundStyle(.white)
                Spacer()
                HStack
                {
                    Image(systemName: "shuffle").foregroundColor(.white)    .font(.system(size: 30))
                    Spacer()
                    Image(systemName: "backward.end.fill").foregroundColor(.white)    .font(.system(size: 30))
                    Spacer()
                    Image(systemName: "play.fill").foregroundColor(.white)    .font(.system(size: 50))
                    Spacer()
                    Image(systemName: "forward.end.fill").foregroundColor(.white)    .font(.system(size: 30))
                    Spacer()
                    Image(systemName: "repeat").foregroundColor(.white)    .font(.system(size: 30))

                }.padding(20)
                Spacer()
            }
        }
    }
}

#Preview {
    TelaMusica(musicaAberta: Song(name: "Teste", artist: "Teste", capa:"https://cdn-p.smehost.net/sites/de91b69fe49447f291327cadcf533792/wp-content/uploads/2016/05/rob_ca_72_capa.jpg"))
}
