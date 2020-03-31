//
//  CharacterCellTableViewCell.swift
//  RickAndMortyAPI
//
//  Created by Виктор on 19.03.2020.
//  Copyright © 2020 Виктор. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell {
    
    let characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let characterNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        return label
    }()
//    
    override func prepareForReuse() {
        self.characterImageView.image = nil
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(characterImageView)
        addSubview(characterNameLabel)
        
        characterImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 0 , width: 90, height: 0, enableInsets: false)
        characterNameLabel.anchor(top: topAnchor, left: nil, bottom: bottomAnchor, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 5, paddingRight: 0, width: 250, height: 0, enableInsets: false)
    }
    
    func setupCell(cell: CharacterCell, for indexPath: IndexPath, charachters: [CharacterModel]) {
        let character = charachters[indexPath.row]
        
        if let name = character.name {
            cell.characterNameLabel.text = name
        }
        self.characterImageView.set(imageUrl: character.image)
    }

    required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
}
