//
//  TelaJogo.swift
//  Aula 7.1
//
//  Created by Turma02-9 on 17/06/24.
//

import SwiftUI

struct TelaJogo: View {
    @State var jogoAberto: SteamDB
    var body: some View {
        ZStack
        {
            Color("corSteam").ignoresSafeArea()
            VStack
            {
                AsyncImage(url: URL(string: jogoAberto.thumb!)){ result in
                    result.image?
                        .resizable()
                        .frame(width: 250, height:250).cornerRadius(5)
                }
                Text(jogoAberto.title!).font(.system(size: 20)).foregroundStyle(.white)
                Spacer()
                Text("Preco Normal").font(.system(size: 20)).foregroundStyle(.white)
                Text(jogoAberto.normalPrice!).font(.system(size: 20)).foregroundStyle(.white)
                Spacer()
                Text("Preco Promocional").font(.system(size: 20)).foregroundStyle(.green)
                Text(jogoAberto.salePrice!).font(.system(size: 20)).foregroundStyle(.green)
                Spacer()
                Text("Porcentagem salva").font(.system(size: 30)).foregroundStyle(.green)
                HStack
                {
                    Text(jogoAberto.savings!).font(.system(size: 30)).foregroundStyle(.green)
                    Text("%").font(.system(size: 30)).foregroundStyle(.green)
                }
            }
        }
    }
}

/*
var title: String?
var normalPrice: String?
var salePrice: String?
var savings: String?
var thumb: String?*/
#Preview {
    TelaJogo(jogoAberto: SteamDB(title: "Hatsune Miku: Project DIVA Mega Mix+", normalPrice:"R$ 1000", salePrice: "R$ 500", savings: "50", thumb: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1761390/capsule_616x353.jpg?t=1688115385"))
}
