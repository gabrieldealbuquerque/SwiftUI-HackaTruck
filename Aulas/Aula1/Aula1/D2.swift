//
//  D1.swift
//  Aula1
//
//  Created by Turma02-9 on 06/06/24.
//

import SwiftUI

struct D2: View {
    var body: some View {
        VStack {
            Image("AE86").resizable()
                .frame(width: 150, height: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).offset(CGSize(width: -80.0, height: 10.0))
            Text("Initial D").offset(/*@START_MENU_TOKEN@*/CGSize(width: 10.0, height: 10.0)/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

#Preview {
    D2()
}
