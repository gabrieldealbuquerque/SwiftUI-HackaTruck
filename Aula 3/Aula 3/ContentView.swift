//
//  ContentView.swift
//  Aula 3
//
//  Created by Turma02-9 on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var Peso: String = ""
    @State private var Altura: String = ""
    @State private var Cor: String = "Normal"
    @State private var grau: String = "Normal"
    @State private var Calcular = false
    
    var body: some View {
        ZStack {
            Color(Cor).frame(width:500, height:5000)
            VStack{
                Text("Calculadora de IMC").font(.system(size: 40))
                VStack{
                    TextField("Digite seu peso", text: $Peso).font(.system(size: 30)).textContentType(.oneTimeCode).multilineTextAlignment(.center).frame(width:350, height:45).background(.white)
                    Spacer()
                    TextField("Digite sua altura", text: $Altura).font(.system(size: 30)).textContentType(.oneTimeCode).multilineTextAlignment(.center).frame(width:350, height:45).background(.white)
                    Spacer()
                    Button(action: {
                        var peso = (Peso as NSString).floatValue
                        var altura = (Altura as NSString).floatValue
                        var imc: Float = peso/(pow(altura, 2))
                        
                        if (imc < 18.5)
                        {
                            grau = "Baixo peso"
                            Cor = "Baixo peso"
                        }
                        
                        if (imc >= 1.85 && imc < 24.99)
                        {
                            grau = "Normal"
                            Cor = "Normal"
                        }
                        if (imc >= 25 && imc < 29.99)
                        {
                            grau = "Sobrepeso"
                            Cor = "Sobrepeso"
                        }
                        if (imc > 30)
                        {
                            grau = "Obesidade"
                            Cor = "Obesidade"
                        }
                        
                    }, label: {Text("Calcular")}).frame(width:150, height:50).background(.blue).foregroundStyle(.white).cornerRadius(10)
                }.frame(maxHeight: 200)
                
                
                
                Spacer()

                Text("\(grau)").font(.system(size: 30)).foregroundStyle(.white)
                Spacer()
                
                Image("Tabela IMC").resizable().frame(width:400, height:200)
            }.frame(maxHeight: 750)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
