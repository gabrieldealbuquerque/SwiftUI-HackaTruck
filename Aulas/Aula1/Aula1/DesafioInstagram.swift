//
//  DesafioInstagram.swift
//  Aula1
//
//  Created by Turma02-9 on 06/06/24.
//

import SwiftUI

struct DesafioInstagram: View {
    var body: some View {
        VStack{
            HStack
            {
                VStack{
                    Image("AE86").resizable().clipShape(Circle()).frame(width: 150, height: 150)
                    Text("Panda Trueno").bold()
                    Text("Takumi`s Machine")
                }
                
                VStack
                {
                    
                    HStack
                    {
                        VStack{
                            Text("8").bold()
                            Text("Posts").font(.system(size: 12))
                        }
                        VStack{
                            Text("5").bold()
                            Text("Seguidores").font(.system(size: 12))
                        }
                        VStack{
                            Text("10").bold()
                            Text("Seguindo").font(.system(size: 12))
                            
                        }
                    }
                    
                    Text("Editar Perfil").bold()
                        .frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 30).background(Color.gray).font(.system(size: 15))
                }
                
            }
                
            HStack{
                Image("1").resizable().frame(width: 20, height: 20).offset(CGSize(width: -50, height: 0))
                
                Image("2").resizable().frame(width: 20, height: 20).offset(CGSize(width: 0, height: 0))
                Image("3").resizable().frame(width: 20, height: 20).offset(CGSize(width: 50, height: 0))
            }
            
        }
       
        HStack{
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
        }
        HStack{
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
        }
        HStack{
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
            AsyncImage(url: URL(string: "https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2022/10/A%D0%9586.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 120, height: 120)
        }
        .padding()
    }
}

#Preview {
    DesafioInstagram()
}
