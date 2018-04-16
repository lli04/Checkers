//
//  Tile.swift
//  Checkers
//
//  Created by  on 4/16/18.
//  Copyright © 2018 Lin Li. All rights reserved.
//

import UIKit

class Tile : UIButton
{
    // this will carry the row and column
    var position: TilePosition
    var name: Int
//    var bordersEmptyTile: Bool
    
    init(position: TilePosition, name: Int, frame: CGRect) {
        self.position = position
        self.name = name

        super.init(frame: frame)
        
        self.setTitleColor(.black, for: .normal)
        
        if name % 2 == 0 {
            self.backgroundColor = UIColor.darkGray
        } else {
            self.backgroundColor = UIColor.white
        }

//        self.backgroundColor = UIColor.blueJeansLight
        self.layer.cornerRadius = 10.0
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 2.0
        self.setTileTitle()
        
    }
    
    func setTileTitle() {
        if self.name == 0 {
            // this is the empty tile
            self.setTitle("", for: .normal)
        } else {
            // this is every other tile
            self.setTitle("\(name)", for: .normal)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
struct TilePosition : Equatable
{
    var row: Int, column: Int
}
