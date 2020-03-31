//
//  NetworkManager.swift
//  RickAndMortyAPI
//
//  Created by Виктор on 19.03.2020.
//  Copyright © 2020 Виктор. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static func getDataFromServer(url: String, completion: @escaping (_ characters: Items) -> ()) {
        guard let url = URL(string: url) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, _, error) in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let characters = try decoder.decode(Items.self, from: data)
                print(characters)
                completion(characters)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    
}
