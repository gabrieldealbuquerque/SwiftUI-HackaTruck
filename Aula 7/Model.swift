//
//  model.swift
//  Aula 7
//
//  Created by Turma02-9 on 14/06/24.
//

import Foundation

struct SteamDB: Decodable, Hashable {
    var title: String?
    var normalPrice: String?
    var salePrice: String?
    var savings: String?
    var thumb: String?
}
