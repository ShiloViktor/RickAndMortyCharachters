//
//  CharacterModel.swift
//  RickAndMortyAPI
//
//  Created by Виктор on 19.03.2020.
//  Copyright © 2020 Виктор. All rights reserved.
//

import Foundation
import UIKit

    struct Items: Decodable {
        let info: Info
        let results: [CharacterModel]
    }

    struct Info: Decodable {
        let count: Int
        let pages: Int
        let next: String
        let prev: String?
    }
    
    struct CharacterModel: Decodable {
        let name: String?
        let image: String
    }
    
    

