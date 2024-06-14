//
//  ContentView.swift
//  Aula 6
//
//  Created by Turma02-9 on 13/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var position = MapCameraPosition.region( MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 27.5356304, longitude: 89.9421603), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    )
    
    @State private var nomePais: String = "Butão"
    
    @State var currentCountry = Location(name: "Butão", coordinate: CLLocationCoordinate2D(latitude: 27.5356304, longitude: 89.9421603), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Flag_of_Bhutan.svg/250px-Flag_of_Bhutan.svg.png", description: "O Butão (em butanês: འབྲུག་ཡུལ་; romaniz.: Dru Ü, pronúncia: [ʈʂɦu yː], lit. Terra do Dragão), oficialmente Reino do Butão (འབྲུག་རྒྱལ་ཁབ་ Druk Gyal Khap),[4] é um país interior localizado no sul da Ásia, no extremo leste dos Himalaias. Faz fronteira a norte com a China e para o sul, leste e oeste pela Índia. Mais a oeste, está separado do Nepal pelo estado indiano de Siquim, enquanto mais ao sul está separado de Bangladesh pelos estados indianos de Assam e Bengala Ocidental. A capital e maior cidade do Butão é Thimbu. O Butão existia como uma manta de retalhos de pequenos feudos em guerra até o início do século XVII, quando o lama e líder militar Shabdrung Ngawang Namgyal, fugindo da perseguição religiosa no Tibete, unificou a área cultivada e uma identidade distinta butanesa. Mais tarde, no início do século XX, o Butão entrou em contato com o Império Britânico e manteve fortes relações bilaterais com a Índia sobre a sua independência. Em 2006, baseado em uma pesquisa global, a revista BusinessWeek avaliou o Butão o país mais feliz na Ásia e o oitavo país mais feliz do mundo. A paisagem do Butão varia de planícies subtropicais no sul às alturas sub-alpinas no norte dos Himalaias, onde alguns picos excedem a altitude de 7 000 metros. Em 1997 a área total foi relatada como cerca de 46 500 km² e de 38 394 km² em 2002. A religião oficial é o budismo vajrayana e é seguida pela grande maioria da população, estimada 802 163 em 2017. O hinduísmo é a segunda maior religião. Em 2008, o Butão fez a transição da monarquia absoluta para a monarquia constitucional e realizou a sua primeira eleição geral. Além de ser um membro da Organização das Nações Unidas, Butão é um membro da Associação Sul-Asiática para a Cooperação Regional (SAARC) e organizou em abril de 2010 o XVI congresso da SAARC.")
    
    @State var shouldPresentSheet = false
    
    var body: some View {
        NavigationStack
        {
            ZStack {
                Map(position: $position)
                {
                    Annotation("", coordinate: currentCountry.coordinate)
                    {
                        ZStack
                        {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                            Text("📍")
                        }.onTapGesture {
                            shouldPresentSheet = true
                        }
                    }
                }.ignoresSafeArea()
                    .sheet(isPresented: $shouldPresentSheet)
                {
                } content: {
                    sheetInfo(sheetAberto: currentCountry)
                }
                VStack
                {
                    ZStack
                    {
                        Rectangle().foregroundColor(.white).frame(width: 500, height: 180).opacity(0.7)
                        VStack
                        {
                            Spacer().frame(height: 20)
                            Text("World map").font(.system(size: 40)).bold()
                            Text("\(nomePais)").font(.system(size: 25))
                        }
                    }
                    Spacer()
                    ScrollView(.horizontal) {
                        HStack
                        {
                            ForEach(arrayLocation) {mapa in
                                Button(action: {
                                    position = MapCameraPosition.region( MKCoordinateRegion(center: mapa.coordinate, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                                    nomePais = mapa.name
                                    currentCountry = mapa
                                }, label: {AsyncImage(url: URL(string: mapa.flag)){ result in
                                    result.image?
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                }
                                })
                                
                            }
                        }.padding(80)
                    }
                    
                }
            }.ignoresSafeArea()
        }
    }
}


#Preview {
    ContentView()
}
