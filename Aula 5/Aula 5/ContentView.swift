//
//  ContentView.swift
//  Aula 5
//
//  Created by Turma02-9 on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack
        {
            
            ZStack
            {
                
                LinearGradient(gradient: Gradient(colors: [.black, .blue]), startPoint: .bottom, endPoint: .top).ignoresSafeArea()
                ScrollView()
                {
                    VStack
                    {
                        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/d/d8/Supercell_album_cover.jpg")){ result in
                            result.image?
                                .resizable()
                                .frame(width: 250, height: 250)
                        }
                        HStack
                        {
                            Text("HackaFM").font(.system(size: 30)).foregroundStyle(.white)
                            Spacer()
                        }.padding(20)
                        Spacer().frame(width: 0, height: 10)
                        HStack
                        {
                            AsyncImage(url: URL(string: "https://cdn.lazyshop.com/files/ff33716b-be66-431a-9a5d-aba48a70cbcc/product/3013fa17eb458d8e9c807fcd7eda0cf3.jpeg?x-oss-process=style%2Fthumb")){ result in
                                result.image?
                                    .resizable()
                                    .frame(width: 24, height: 24).cornerRadius(5)
                            }
                            Text("Hatsune Miku FM").font(.system(size: 15)).textContentType(.oneTimeCode).foregroundStyle(.white)
                            Spacer()
                        }.padding(20)
                        Spacer()
                        
                        ForEach(arrayMusicas, id: \.self) {song in
                            NavigationLink(destination: TelaMusica(musicaAberta: song))
                            {
                                VStack
                                {
                                    HStack
                                    {
                                        AsyncImage(url: URL(string: song.capa)){ result in
                                            result.image?
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        }
                                        VStack
                                        {
                                            HStack
                                            {
                                                Text(song.name).font(.system(size: 20)).textContentType(.oneTimeCode).foregroundStyle(.white)
                                                Spacer()
                                                
                                            }
                                            Spacer()
                                            HStack
                                            {
                                                Text(song.artist).font(.system(size: 15)).textContentType(.oneTimeCode).foregroundStyle(.white)
                                                Spacer()
                                            }
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis").foregroundColor(.white)
                                    }.padding(10)
                                    
                                }
                            }
                            
                        }
                        Spacer().frame(height:100)

                        HStack
                        {
                            Text("Sugeridos").font(.system(size: 30)).textContentType(.oneTimeCode).foregroundStyle(.white)
                            Spacer()
                        }
                        ScrollView(.horizontal) {
                            HStack
                            {
                                VStack
                                {
                                    AsyncImage(url: URL(string: "https://i.discogs.com/Kie08LynhYOQSmR1vMgav60Cy61V3D15U0GWJ8g6Geg/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ4MjUy/MTAtMTM3NjY3NzYy/Ny04NDMyLmpwZWc.jpeg")){ result in
                                        result.image?
                                            .resizable()
                                            .frame(width: 200, height: 200)
                                    }
                                    Text("Masayoshi Takanaka - Takanaka").font(.system(size: 15)).textContentType(.oneTimeCode).foregroundStyle(.white)
                                    
                                }
                                VStack
                                {
                                    AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/pt/b/b1/Tim_Maia_1971.jpeg")){ result in
                                        result.image?
                                            .resizable()
                                            .frame(width: 200, height: 200)
                                    }
                                    Text("Tim Maia - Tim Maia (1971)").font(.system(size: 15)).textContentType(.oneTimeCode).foregroundStyle(.white)
                                    
                                }
                                VStack
                                {
                                    AsyncImage(url: URL(string: "https://www.progarchives.com/progressive_rock_discography_covers/105/cover_27314832023_r.jpg")){ result in
                                        result.image?
                                            .resizable()
                                            .frame(width: 200, height: 200)
                                    }
                                    Text("Yes - Mirror to the Sky").font(.system(size: 15)).textContentType(.oneTimeCode).foregroundStyle(.white)
                                    
                                }
                                VStack
                                {
                                    AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/5/55/Michael_Jackson_-_Thriller.png")){ result in
                                        result.image?
                                            .resizable()
                                            .frame(width: 200, height: 200)
                                    }
                                    Text("Michael Jackson - Thriller").font(.system(size: 15)).textContentType(.oneTimeCode).foregroundStyle(.white)
                                    
                                }
                                VStack
                                {
                                    AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/pt/3/35/The_Eminem_Show.jpg")){ result in
                                        result.image?
                                            .resizable()
                                            .frame(width: 200, height: 200)
                                    }
                                    Text("Eminem - The Eminem Show").font(.system(size: 15)).textContentType(.oneTimeCode).foregroundStyle(.white)
                                    
                                }
                            }
                        }
                    }
                }
                
                
            }
        }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
