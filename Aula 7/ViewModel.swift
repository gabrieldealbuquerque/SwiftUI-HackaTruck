//
//  ViewModel.swift
//  Aula 7.1
//
//  Created by Turma02-9 on 14/06/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var dados: [SteamDB] = []
    //Method
    
    func fetchDados(){
        guard let url = URL(string: "https://www.cheapshark.com/api/1.0/deals?storeID=1&upperPrice=10") else{
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let jsonDecodificado = try JSONDecoder().decode([SteamDB].self, from: data)
                
                //Colocar o valor em moedas
                DispatchQueue.main.async{
                    self?.dados = jsonDecodificado
                }
            }catch{
                print(error)
            }
        } //
        
        task.resume()
    }
}
