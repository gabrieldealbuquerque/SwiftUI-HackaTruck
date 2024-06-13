//
//  struct.swift
//  Aula 5
//
//  Created by Turma02-9 on 12/06/24.
//

import Foundation

struct Song : Hashable{
    var name : String
    var artist : String
    var capa : String
}


var arrayMusicas = [
    Song(name: "BFG 10K (From DOOM Eternal)", artist: "Mick Gordon", capa: "https://doomwiki.org/w/images/f/f9/DE_OGS_Cover.png"),
    Song(name: "Brazilian Skies", artist: "Masayoshi Takanaka", capa: "https://i.scdn.co/image/ab67616d0000b273c718e0f746b0f671fd92421e"),
    Song(name: "Holy Diver", artist: "Dio", capa: "https://m.media-amazon.com/images/I/81exki0oztL._UF1000,1000_QL80_.jpg"),
    Song(name: "Nyan Cat", artist: "Nyan Cat", capa: "https://i1.sndcdn.com/artworks-000008546606-uj1633-t500x500.jpg"),
    Song(name: "Estou Seguindo a Jesus Cristo", artist: "R.R. Soares", capa: "https://upload.wikimedia.org/wikipedia/pt/8/81/Show_da_F%C3%A9_-_Logo.jpg"),
    Song(name: "Megitsune", artist: "BABYMETAL", capa: "https://upload.wikimedia.org/wikipedia/pt/3/36/Babymetalcover.jpg"),
    Song(name: "The Race is Over", artist: "Dave Rodgers", capa: "https://f4.bcbits.com/img/a1166907929_10.jpg"),
]
