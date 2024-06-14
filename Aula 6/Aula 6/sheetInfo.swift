//
//  sheetInfo.swift
//  Aula 6
//
//  Created by Turma02-9 on 13/06/24.
//

import SwiftUI
import MapKit

struct sheetInfo: View {
    @State var sheetAberto: Location
    var body: some View {
        ScrollView()
        {
            Text("\(sheetAberto.name)").font(.system(size: 50)).bold()
            AsyncImage(url: URL(string: "\(sheetAberto.flag)")){ result in
                result.image?
                    .resizable()
                    .frame(width: 300, height: 300).cornerRadius(5)
            }
            Text("\(sheetAberto.description)").font(.system(size: 15))
        }.padding(30)
    }
}

#Preview {
    sheetInfo(sheetAberto: Location(name: "Teste", coordinate: CLLocationCoordinate2D(latitude: 27.5356304, longitude: 89.9421603), flag: "https://cdn-p.smehost.net/sites/de91b69fe49447f291327cadcf533792/wp-content/uploads/2016/05/rob_ca_72_capa.jpg", description: "sa"))
}
