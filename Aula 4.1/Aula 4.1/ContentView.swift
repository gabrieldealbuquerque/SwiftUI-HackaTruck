//
//  ContentView.swift
//  Aula 4.1
//
//  Created by Turma02-9 on 11/06/24.
//

import SwiftUI

struct SheetView: View {

    var body: some View {

            VStack
            {
                Text("Sheet View").font(.system(size: 30)).textContentType(.oneTimeCode).multilineTextAlignment(.center).foregroundStyle(.white)
                Spacer()
                
                ZStack
                {
                    Rectangle().frame(width: 250, height: 150).cornerRadius(10).foregroundColor(.pink)
                    VStack
                    {
                        Text("Nome: Tod").foregroundStyle(.white)
                        Text("Sobrenome: Santos").foregroundStyle(.white)
                    }
                }
                Spacer()
            }
    }
    
}

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            ZStack
            {
                Color(.blue).ignoresSafeArea()
                    VStack
                    {
                        Image("Image").resizable().frame(width: 250, height: 150).foregroundColor(.white)
                        
                        Spacer()
                        
                        NavigationLink(destination: Modo1())
                        {
                            Text("Modo 1").frame(width: 200, height: 75).background(.pink).cornerRadius(10).foregroundColor(.white).bold()
                        }
                        NavigationLink(destination: Modo2())
                        {
                            Text("Modo 2").frame(width: 200, height: 75).background(.pink).cornerRadius(10).foregroundColor(.white).bold()
                        }
                        Button("Modo 3") {
                            showingSheet.toggle()
                        }.frame(width:200, height: 75).background(.pink)            .cornerRadius(10)
                            .foregroundColor(.white)
                            .sheet(isPresented: $showingSheet) {
                                ZStack
                                {
                                    Color(.blue).ignoresSafeArea()
                                    SheetView()
                                }
                            }
                    }
                }
            
        }
    }
}

#Preview {
    ContentView()
}
