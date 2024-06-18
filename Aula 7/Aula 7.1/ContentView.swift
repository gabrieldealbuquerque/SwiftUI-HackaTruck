//
//  ContentView.swift
//  Aula 7.1
//
//  Created by Turma02-9 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        NavigationStack
        {
            ZStack
            {
                Color("corSteam").ignoresSafeArea()
                ScrollView()
                {
                    
                    VStack {
                        ForEach(vm.dados, id:\.self){jogo in
                            NavigationLink(destination: TelaJogo(jogoAberto: jogo))
                            {
                                AsyncImage(url: URL(string: jogo.thumb!)){ result in
                                    
                                    result.image?
                                        .resizable()
                                        .frame(width: 350, height: 200)
                                    ZStack
                                    {
                                        Rectangle().fill(
                                            LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]),
                                                           startPoint: .top,
                                                           endPoint: .bottom))
                                        VStack
                                        {
                                            HStack
                                            {
                                                Text("\(jogo.title!)").foregroundColor(.white).font(.system(size: 20)).bold()
                                                Spacer()
                                            }.padding(10)
                                            
                                            HStack
                                            {
                                                ZStack
                                                {
                                                    Rectangle().fill(Color("darkGreen")).frame(width: 100, height: 50)
                                                    HStack
                                                    {
                                                        let firstFiveRange = jogo.savings!.startIndex..<jogo.savings!.index(jogo.savings!.startIndex, offsetBy: 5)
                                                        let firstFiveCharacters = jogo.savings![firstFiveRange]
                                                        Text(firstFiveCharacters).foregroundColor(.green).font(.system(size: 20))
                                                        Text("%").foregroundColor(.green).font(.system(size: 20))
                                                    }
                                                }
                                                ZStack
                                                {
                                                    Rectangle().fill(Color("c")).frame(width: 150, height: 50).offset(x: -50).opacity(0.7)
                                                    HStack
                                                    {
                                                        Text("R$\(jogo.normalPrice!)").strikethrough().foregroundColor(.gray).font(.system(size: 15))
                                                        Text("R$ \(jogo.salePrice!)").foregroundColor(.green).font(.system(size: 20))
                                                        Spacer().frame(width: 100)
                                                    }
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                        
                                    }//
                                }
                            }.padding()
                            
                            
                        }
                    }.onAppear()
                    {
                        vm.fetchDados()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
