//
//  TableViewController.swift
//  RickAndMortyAPI
//
//  Created by Виктор on 19.03.2020.
//  Copyright © 2020 Виктор. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    private let cellId = "Cell"
    private var characters = [CharacterModel]()
    private let url = "https://rickandmortyapi.com/api/character/"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CharacterCell.self, forCellReuseIdentifier: cellId)
        fetchData()
    }
    
    private func fetchData() {
        NetworkManager.getDataFromServer(url: url) { (characters) in
            self.characters = characters.results
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

}

extension TableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
       }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CharacterCell
        cell.setupCell(cell: cell, for: indexPath, charachters: characters)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
   
}

